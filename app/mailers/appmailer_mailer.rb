class AppmailerMailer < ApplicationMailer
    

    def late_notice 
        @books = Book.all
        late_users = Array.new

        @books.histories.each do |history|
            if(history.returnedOn = nil)
                late_users << history.email
            end

        end

        late_users.uniq.each do |email|
            mail(to: email, subject: 'You have 1 or more books overdue.')
        end

        


        
    end
end
