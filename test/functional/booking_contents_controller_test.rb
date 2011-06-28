require 'test_helper'

class BookingContentsControllerTest < ActionController::TestCase
  setup do
    @booking_content = booking_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booking_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking_content" do
    assert_difference('BookingContent.count') do
      post :create, :booking_content => @booking_content.attributes
    end

    assert_redirected_to booking_content_path(assigns(:booking_content))
  end

  test "should show booking_content" do
    get :show, :id => @booking_content.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @booking_content.to_param
    assert_response :success
  end

  test "should update booking_content" do
    put :update, :id => @booking_content.to_param, :booking_content => @booking_content.attributes
    assert_redirected_to booking_content_path(assigns(:booking_content))
  end

  test "should destroy booking_content" do
    assert_difference('BookingContent.count', -1) do
      delete :destroy, :id => @booking_content.to_param
    end

    assert_redirected_to booking_contents_path
  end
end
