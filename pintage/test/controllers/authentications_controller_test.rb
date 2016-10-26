require 'test_helper'

class AuthenticationsControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get authentications_register_url
    assert_response :success
  end

  test "should get login" do
    get authentications_login_url
    assert_response :success
  end

end
