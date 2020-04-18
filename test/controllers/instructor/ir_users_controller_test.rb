require 'test_helper'

class Instructor::IrUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructor_ir_users_new_url
    assert_response :success
  end

end
