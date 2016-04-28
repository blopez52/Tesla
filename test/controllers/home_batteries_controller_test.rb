require 'test_helper'

class HomeBatteriesControllerTest < ActionController::TestCase
  setup do
    @home_battery = home_batteries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_batteries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_battery" do
    assert_difference('HomeBattery.count') do
      post :create, home_battery: {  }
    end

    assert_redirected_to home_battery_path(assigns(:home_battery))
  end

  test "should show home_battery" do
    get :show, id: @home_battery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_battery
    assert_response :success
  end

  test "should update home_battery" do
    patch :update, id: @home_battery, home_battery: {  }
    assert_redirected_to home_battery_path(assigns(:home_battery))
  end

  test "should destroy home_battery" do
    assert_difference('HomeBattery.count', -1) do
      delete :destroy, id: @home_battery
    end

    assert_redirected_to home_batteries_path
  end
end
