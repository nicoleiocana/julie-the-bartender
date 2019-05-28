require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", accolades_path
    assert_select "a[href=?]", new_message_path
    assert_select "a[href=?]", tip_me_path
    get accolades_path
    assert_select "title", full_title("Accolades")
  end
end
