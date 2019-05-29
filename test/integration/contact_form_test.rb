require 'test_helper'

class ContactFormTest < ActionDispatch::IntegrationTest
  
  test "invalid contact form" do
    get new_message_path
    post messages_path, params: { message: { name: "",
                                             email: "name@example.com",
                                             body: "Sample text" } }
    assert_template "messages/new"
    assert_select "div#error_explanation"
    assert_select "div.alert-danger"
  end
  
  test "valid contact form" do
    get new_message_path
    post messages_path, params: { message: { name: "John Doe",
                                             email: "name@example.com",
                                             body: "Sample text" } }
    follow_redirect!
    assert_template "pages/home"
    assert_select "div.alert-success"
  end
end
