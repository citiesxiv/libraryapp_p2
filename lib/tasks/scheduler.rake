task :send_late_email => :environment do
    puts "Sending emails..."
    AppmailerMailer.late_notice.deliver
    puts "Sent emails."
  end