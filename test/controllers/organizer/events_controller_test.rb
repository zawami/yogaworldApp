require 'test_helper'

class Organizer::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get organizer_events_new_url
    assert_response :success
  end

end
