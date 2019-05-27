require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "julie.the.bartender"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Julie Marroquin | #{@base_title}"
  end
  
  test "should get accolades" do
    get accolades_path
    assert_response :success
    assert_select "title", "Accolades | #{@base_title}"
  end
  
  test "should get contact" do
    get new_message_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  
  test "should get tip me" do
    get tip_me_path
    assert_response :success
    assert_select "title", "Tip Me | #{@base_title}"
  end
  
end
