require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact" do
    msg = Message.new(name: "Jane Doe", 
                      email: "name@example.com",
                      phone: "123-456-7890",
                      body: "This is an example body of text.")
    mail = MessageMailer.contact(msg)
    assert_equal "Contact Information from juliethebartender.herokuapp.com", 
                  mail.subject
    assert_equal ["juliemarroquin.bartender@gmail.com"], mail.to
    assert_equal ["noreply@example.com"], mail.from
    assert_match msg.name, mail.body.encoded
    assert_match msg.email, mail.body.encoded
    assert_match msg.body, mail.body.encoded
  end

end
