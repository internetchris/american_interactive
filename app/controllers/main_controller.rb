class MainController < ApplicationController
  
  
  def send_booking_request
    if params[:booking_request][:phone].blank? || params[:booking_request][:name].blank?  || params[:booking_request][:email].blank? || params[:booking_request][:email] == 'Your email:' || params[:booking_request][:name] == 'Your name:' || params[:booking_request][:name] == 'Your phone:'
    flash[:notice] = "ERROR: You must provide a name, email and valid phone number."
    else
    flash[:notice] = "We have recieved your rate request and you should recieve an email with rate information. Give us a call when you're ready to book or if you have questions. "
    BookingMailer.booking_email(params[:booking_request]).deliver
    BookingMailer.rate_email(params[:booking_request][:email]).deliver
    end
    redirect_to root_path
  end
end
