class AppmailerMailer < ApplicationMailer
  #default from: 'citiesxiv@onmail.com'
  layout 'mailer'

    def late_notice 
        @books = Book.all
        late_users = Array.new

        @books.each do |book|
            book.histories.each do |history|
                if(Date.today == history.chkDate + 7 && history.returnedOn == nil)
                    late_users << history.email
                end
            end
            

        end

        late_users.uniq.each do |email|
            mail(to: email, subject: 'You have 1 or more books overdue.')
        end
    end
    
    def send_notice(book)
        @book = book
        @book.bookrequests.each do |user|
            mail(to: user.email, subject: @book.title + ' has become available.')
        end

    end

    
end
