require 'test_helper'

class PlayerStatisticsControllerTest < ActionController::TestCase
  setup do
    @player_statistic = player_statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_statistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_statistic" do
    assert_difference('PlayerStatistic.count') do
      post :create, player_statistic: @player_statistic.attributes
    end

    assert_redirected_to player_statistic_path(assigns(:player_statistic))
  end

  test "should show player_statistic" do
    get :show, id: @player_statistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_statistic
    assert_response :success
  end

  test "should update player_statistic" do
    put :update, id: @player_statistic, player_statistic: @player_statistic.attributes
    assert_redirected_to player_statistic_path(assigns(:player_statistic))
  end

  test "should destroy player_statistic" do
    assert_difference('PlayerStatistic.count', -1) do
      delete :destroy, id: @player_statistic
    end

    assert_redirected_to player_statistics_path
  end
end
