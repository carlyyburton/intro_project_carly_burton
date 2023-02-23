require "application_system_test_case"

class FakeGamesTest < ApplicationSystemTestCase
  setup do
    @fake_game = fake_games(:one)
  end

  test "visiting the index" do
    visit fake_games_url
    assert_selector "h1", text: "Fake games"
  end

  test "should create fake game" do
    visit fake_games_url
    click_on "New fake game"

    fill_in "Genre", with: @fake_game.genre
    fill_in "Platform", with: @fake_game.platform
    fill_in "Title", with: @fake_game.title
    click_on "Create Fake game"

    assert_text "Fake game was successfully created"
    click_on "Back"
  end

  test "should update Fake game" do
    visit fake_game_url(@fake_game)
    click_on "Edit this fake game", match: :first

    fill_in "Genre", with: @fake_game.genre
    fill_in "Platform", with: @fake_game.platform
    fill_in "Title", with: @fake_game.title
    click_on "Update Fake game"

    assert_text "Fake game was successfully updated"
    click_on "Back"
  end

  test "should destroy Fake game" do
    visit fake_game_url(@fake_game)
    click_on "Destroy this fake game", match: :first

    assert_text "Fake game was successfully destroyed"
  end
end
