require "application_system_test_case"

class PlayedGamesTest < ApplicationSystemTestCase
  setup do
    @played_game = played_games(:one)
  end

  test "visiting the index" do
    visit played_games_url
    assert_selector "h1", text: "Played games"
  end

  test "should create played game" do
    visit played_games_url
    click_on "New played game"

    fill_in "Game", with: @played_game.game_id
    fill_in "User", with: @played_game.user_id
    click_on "Create Played game"

    assert_text "Played game was successfully created"
    click_on "Back"
  end

  test "should update Played game" do
    visit played_game_url(@played_game)
    click_on "Edit this played game", match: :first

    fill_in "Game", with: @played_game.game_id
    fill_in "User", with: @played_game.user_id
    click_on "Update Played game"

    assert_text "Played game was successfully updated"
    click_on "Back"
  end

  test "should destroy Played game" do
    visit played_game_url(@played_game)
    click_on "Destroy this played game", match: :first

    assert_text "Played game was successfully destroyed"
  end
end
