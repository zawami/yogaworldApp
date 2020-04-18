require 'test_helper'

class Organizer::OrgUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organizer_org_users_new_url
    assert_response :success
  end

end
