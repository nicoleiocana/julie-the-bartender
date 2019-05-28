require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @message = Message.new(name: "John Doe",
                           email: "name@example.com",
                           phone: "123-456-7890",
                           body: "This is a test.")
  end
  
  test "should be valid" do
    assert @message.valid?
  end
  
  test "name should be present" do
    @message.name = "  "
    assert_not @message.valid?
  end
  
  test "email should be present" do
    @message.email = "   "
    assert_not @message.valid?
  end
  
  test "body should be present" do
    @message.body = "  "
    assert_not @message.valid?
  end
  
  test "email validation should accept valid addresses" do
    valid_email_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                              first.last@foo.jp alice+bob@baz.cn]
    valid_email_addresses.each do |email|
      @message.email = email
      assert @message.valid?, "#{valid_email_addresses.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid address" do
    invalid_email_addresses = %w[user@example,com user_at_foo.org user.name@example.
                                 foo@bar_baz.com foo@bar+baz.com]
    invalid_email_addresses.each do |email|
      @message.email = email
      assert_not @message.valid?, "#{invalid_email_addresses.inspect} should be invalid"
    end
  end
  
  test "phone validation should accept valid phone numbers" do
    valid_phone_numbers = ["123-456-7890",
                           "18005551234",
                           "1    800    555-1234",
                           "(123) 456-7890",
                           "123 456 7890",
                           "123.456.7890",
                           "+91 (123) 456-7890"]
    valid_phone_numbers.each do |number|
      @message.phone = number
      assert @message.valid?, "#{valid_phone_numbers.inspect} should be valid"
    end
  end
  
  test "phone validation should reject invalid phone numbers" do
    invalid_phone_numbers = ["1234567", "123456789", "text", "+()*."]
    invalid_phone_numbers.each do |number|
      @message.phone = number
      assert_not @message.valid?, "#{invalid_phone_numbers.inspect} should not be valid"
    end
  end
end
