require "test_helper"

class GolfClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golf_clubs_index_url
    assert_response :success
  end
end
