# app/models/sm_s_sender.rb
require 'AfricasTalking'

class SMSSender
  def self.send_sms(to, message)
    # Set your app credentials
    username = "cravings_254"
    apikey   = "atsk_f68bcfa86bc8e7e4e636120ca71e05622b1325a55cd1ab277d1cfc4e55688cb61cfeb95b"

    # Initialize the SDK
    @AT=AfricasTalking::Initialize.new(username,apikey)
    # Get the SMS service
    sms = @AT.sms

    options = {
      "to" => to,
      "message" => message,
      "from" => "20880"
    }

    begin
    
      reports = sms.send(options)
      reports.each { |report| puts report.to_yaml }
    rescue AfricasTalking::AfricasTalkingException => ex
      puts 'Encountered an error: ' + ex.message
    end
  end
end

#" atsk_39d5fea3589d88e591bfd113004323b49ac37bd1a9d5c61e8909719a40fee53f4aba7d1"