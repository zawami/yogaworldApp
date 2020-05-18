require 'test_helper'

class Instructor::ApplysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructor_applys_new_url
    assert_response :success
  end

end
