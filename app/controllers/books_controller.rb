class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :return]
  

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    
    

  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def reserve
    @bookCopy= Book.find(params[:id])
    @bookCopy.histories.create(email: current_user.email, chkDate: Date.today, copy: @bookCopy.copies)
    
    current_user.check_outs.create(book_id: @bookCopy.id,
                                   checkout_date: Date.today,
                                   bookTitle: @bookCopy.title,
                                   returnDate: (Date.today + 7),
                                   email: current_user.email, 
                                   copy: @bookCopy.copies,
                                   libName: @bookCopy.libName)
    @bookCopy.copies -= 1 
    @bookCopy.save
   
    
   
    redirect_to @bookCopy, notice: @bookCopy.title + ' was successfully checked out.' 
    
    
  end

  def book_return
    @bookCopy = Book.find(params[:id])
    @bookCopy.copies += 1 
    @bookCopy.save
    
    # if(@bookCopy.bookrequests.length > 0)
    #   AppmailerMailer.send_notice(@bookCopy).deliver
    #   @bookCopy.bookrequests.destroy_all
    # end
    

    current_user.books.destroy(Book.find_by_id(@bookCopy))

    @history = @bookCopy.histories.where(email: current_user.email).last 

    @history.returnedOn = Date.today
    @history.save
    redirect_to current_user, notice: 'Book was successfully returned.'
  end
  
  def request_book 
    @bookCopy = Book.find(params[:id])
    @bookCopy.bookrequests.create(email: current_user.email,libName: @bookCopy.libName)
    redirect_to @bookCopy, notice: @bookCopy.title + ' was successfully requested.'
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:libName,:title, :author, :genre, :subgenre, :pages, :publisher, :copies)
    end
end
