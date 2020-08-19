require 'test_helper'

class Api::PlaylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get skip-routes" do
    get api_playlists_skip-routes_url
    assert_response :success
  end

end
