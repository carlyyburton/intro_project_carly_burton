require "test_helper"

class FakeGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fake_game = fake_games(:one)
  end

  test "should get index" do
    get fake_games_url
    assert_response :success
  end

  test "should get new" do
    get new_fake_game_url
    assert_response :success
  end

  test "should create fake_game" do
    assert_difference("FakeGame.count") do
      post fake_games_url, params: { fake_game: { genre: @fake_game.genre, platform: @fake_game.platform, title: @fake_game.title } }
    end

    assert_redirected_to fake_game_url(FakeGame.last)
  end

  test "should show fake_game" do
    get fake_game_url(@fake_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_fake_game_url(@fake_game)
    assert_response :success
  end

  test "should update fake_game" do
    patch fake_game_url(@fake_game), params: { fake_game: { genre: @fake_game.genre, platform: @fake_game.platform, title: @fake_game.title } }
    assert_redirected_to fake_game_url(@fake_game)
  end

  test "should destroy fake_game" do
    assert_difference("FakeGame.count", -1) do
      delete fake_game_url(@fake_game)
    end

    assert_redirected_to fake_games_url
  end
end
