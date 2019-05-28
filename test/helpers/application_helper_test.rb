require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "julie.the.bartender"
    assert_equal full_title("Contact"), "Contact | julie.the.bartender"
  end
end