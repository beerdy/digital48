class MessageMailer < ApplicationMailer
  default from: "digital48.service@yandex.ru"
 
  def welcome_email(message)
    @message = message
    @url  = 'http://digital48.ru/'
    mail(to: 'ss48.a@yandex.ru', subject: 'DIDGITAL48 message')
  end
end
