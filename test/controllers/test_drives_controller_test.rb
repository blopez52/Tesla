require 'test_helper'

class TestDrivesControllerTest < ActionController::TestCase
  setup do
    @test_drife = test_drives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_drives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_drife" do
    assert_difference('TestDrive.count') do
      post :create, test_drife: {  }
    end

    assert_redirected_to test_drife_path(assigns(:test_drife))
  end

  test "should show test_drife" do
    get :show, id: @test_drife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_drife
    assert_response :success
  end

  test "should update test_drife" do
    patch :update, id: @test_drife, test_drife: {  }
    assert_redirected_to test_drife_path(assigns(:test_drife))
  end

  test "should destroy test_drife" do
    assert_difference('TestDrive.count', -1) do
      delete :destroy, id: @test_drife
    end

    assert_redirected_to test_drives_path
  end
end
