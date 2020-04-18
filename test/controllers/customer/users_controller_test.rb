require 'test_helper'

class Customer::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_users_new_url
    assert_response :success
  end

end
