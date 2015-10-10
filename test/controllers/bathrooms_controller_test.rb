require 'test_helper'

class BathroomsControllerTest < ActionController::TestCase
  setup do
    @bathroom = bathrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bathrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bathroom" do
    assert_difference('Bathroom.count') do
      post :create, bathroom: { floor_no: @bathroom.floor_no, latitude: @bathroom.latitude, location: @bathroom.location, longitude: @bathroom.longitude, post_time: @bathroom.post_time, restroom_hours: @bathroom.restroom_hours, user_id: @bathroom.user_id }
    end

    assert_redirected_to bathroom_path(assigns(:bathroom))
  end

  test "should show bathroom" do
    get :show, id: @bathroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bathroom
    assert_response :success
  end

  test "should update bathroom" do
    patch :update, id: @bathroom, bathroom: { floor_no: @bathroom.floor_no, latitude: @bathroom.latitude, location: @bathroom.location, longitude: @bathroom.longitude, post_time: @bathroom.post_time, restroom_hours: @bathroom.restroom_hours, user_id: @bathroom.user_id }
    assert_redirected_to bathroom_path(assigns(:bathroom))
  end

  test "should destroy bathroom" do
    assert_difference('Bathroom.count', -1) do
      delete :destroy, id: @bathroom
    end

    assert_redirected_to bathrooms_path
  end
end
