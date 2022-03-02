require "test_helper"

class BreaksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get breaks_new_url
    assert_response :success
  end

  test "should get countdown" do
    get breaks_countdown_url
    assert_response :success
  end
end
