class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact.subject
  #
  def contact(message)
    @message = message

    mail to: "juliemarroquin.bartender@gmail.com", 
    subject: "Contact Information from juliethebartender.herokuapp.com"
  end
end
