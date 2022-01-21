class CheckOutController < ApplicationController
  def create
    @checkout = CheckOut.new(checkout_params)
  end





  private
    def checkout_params
      params.require(:checkout).permit(:book_id, :user_id, :checkout_date,:bookTitle,:returnDate,:email,:copy)
    end
  end
  
end
