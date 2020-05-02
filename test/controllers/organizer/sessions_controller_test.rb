require 'test_helper'

class Organizer::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organizer_sessions_new_url
    assert_response :success
  end

end
