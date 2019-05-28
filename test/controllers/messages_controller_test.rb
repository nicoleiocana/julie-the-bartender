require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "julie.the.bartender"
  end
  
  test "should get contact" do
    get new_message_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
