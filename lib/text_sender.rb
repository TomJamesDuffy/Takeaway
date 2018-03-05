require 'rubygems' 
require 'twilio-ruby'

class TextSender

  def initialize(recipient, message)
    @recipient = recipient
    @message = message
  end

  def send_text(client_class = Twilio::REST::Client.new)
    account_sid = ENV["TWILIO_ACCOUNT_SID"] 
    auth_token = ENV["TWILIO_TOKEN"]

    @client = client_class.new account_sid, auth_token
    @client.messages.create({
      :from => ENV["TWILIO_FROM"],
      :to => @recipient, 
      :body => @message 
    })
  end
end
