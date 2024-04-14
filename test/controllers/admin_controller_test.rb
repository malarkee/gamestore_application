require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get games" do
    get admin_games_url
    assert_response :success
  end

  test "should get reviews" do
    get admin_reviews_url
    assert_response :success
  end

  test "should get users" do
    get admin_users_url
    assert_response :success
  end

  test "should get show_games" do
    get admin_show_games_url
    assert_response :success
  end
end
