require "test_helper"

class FreeGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get free_games" do
    get free_games_free_games_url
    assert_response :success
  end
end
