require 'test_helper'

class BasketContentsControllerTest < ActionController::TestCase
  setup do
    @basket_content = basket_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basket_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basket_content" do
    assert_difference('BasketContent.count') do
      post :create, :basket_content => @basket_content.attributes
    end

    assert_redirected_to basket_content_path(assigns(:basket_content))
  end

  test "should show basket_content" do
    get :show, :id => @basket_content.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @basket_content.to_param
    assert_response :success
  end

  test "should update basket_content" do
    put :update, :id => @basket_content.to_param, :basket_content => @basket_content.attributes
    assert_redirected_to basket_content_path(assigns(:basket_content))
  end

  test "should destroy basket_content" do
    assert_difference('BasketContent.count', -1) do
      delete :destroy, :id => @basket_content.to_param
    end

    assert_redirected_to basket_contents_path
  end
end
