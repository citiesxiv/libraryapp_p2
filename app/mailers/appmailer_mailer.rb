class AppmailerMailer < ApplicationMailer
    default from: 'citiesxiv@onmail.com'

    def late_notice 
        @books = Book.all
        late_users = Array.new

        @books.histories.each do |history|
            if(Date.today == history.chkDate + 7 && history.returnedOn == nil)
                late_users << history.email
            end

        end

        late_users.uniq.each do |email|
            mail(to: email, subject: 'You have 1 or more books overdue.')
        end

        


        
    end
end
