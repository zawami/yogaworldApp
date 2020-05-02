require 'test_helper'

class Instructor::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructor_sessions_new_url
    assert_response :success
  end

end
