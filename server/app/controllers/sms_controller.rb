# app/controllers/sms_controller.rb
class SmsController < ApplicationController
    def send_sms
      to = "+254790133397 "
      message = "Hi,thank you for your contribution."

  
      SMSSender.send_sms(to, message)
  
      render plain: " SMS sent successfully!"
    end
  end
