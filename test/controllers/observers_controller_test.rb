require 'test_helper'

class ObserversControllerTest < ActionController::TestCase
  setup do
    @observer = observers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observers)
  end

  test "should create observer" do
    assert_difference('Observer.count') do
      post :create, observer: {  }
    end

    assert_response 201
  end

  test "should show observer" do
    get :show, id: @observer
    assert_response :success
  end

  test "should update observer" do
    put :update, id: @observer, observer: {  }
    assert_response 204
  end

  test "should destroy observer" do
    assert_difference('Observer.count', -1) do
      delete :destroy, id: @observer
    end

    assert_response 204
  end
end
