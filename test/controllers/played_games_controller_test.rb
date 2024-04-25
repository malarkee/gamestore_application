require "test_helper"

class PlayedGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @played_game = played_games(:one)
  end

  test "should get index" do
    get played_games_url
    assert_response :success
  end

  test "should get new" do
    get new_played_game_url
    assert_response :success
  end

  test "should create played_game" do
    assert_difference("PlayedGame.count") do
      post played_games_url, params: { played_game: { game_id: @played_game.game_id, user_id: @played_game.user_id } }
    end

    assert_redirected_to played_game_url(PlayedGame.last)
  end

  test "should show played_game" do
    get played_game_url(@played_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_played_game_url(@played_game)
    assert_response :success
  end

  test "should update played_game" do
    patch played_game_url(@played_game), params: { played_game: { game_id: @played_game.game_id, user_id: @played_game.user_id } }
    assert_redirected_to played_game_url(@played_game)
  end

  test "should destroy played_game" do
    assert_difference("PlayedGame.count", -1) do
      delete played_game_url(@played_game)
    end

    assert_redirected_to played_games_url
  end
end
