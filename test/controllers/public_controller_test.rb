require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get public_welcome_url
    assert_response :success
  end

  test "should get about" do
    get public_about_url
    assert_response :success
  end
end
