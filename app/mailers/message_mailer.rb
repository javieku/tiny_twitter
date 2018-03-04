class MessageMailer < ApplicationMailer

  def contact_me(message)
    @greeting = "Hi"
    @body = message.body
    mail to: "tinytwitter.co@gmail.com", from: message.email
  end

end