# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://166a437c6baa47b0941740aa7d9d5512.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/message_mailer/contact
  def contact
    msg = Message.new(name: "John Doe", 
                      email: "name@example.com", 
                      phone: "123-456-7890", 
                      body: "This is an example body of text.")
    MessageMailer.contact(msg)
  end
end
