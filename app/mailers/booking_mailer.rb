class BookingMailer < ActionMailer::Base
  default :from => "glacierridgesuites@gmail.com"
  
  def booking_email(booking_request)
      @booking_request = booking_request
      mail(:to => (Rails.env == 'development' ? "internetchris1@gmail.com" : "agf@bresnan.net"), :subject => "[New Booking] - Glacier Ridge Website")
    end
    
  def rate_email(email_to)
    mail(:to => (Rails.env == 'development' ? "internetchris1@gmail.com" : "#{email_to}"), :subject => "[Rate Request] - Glacier Ridge Suites")
  end
  
  
end
