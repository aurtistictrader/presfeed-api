require 'test_helper'

class PresentersControllerTest < ActionController::TestCase
  setup do
    @presenter = presenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presenters)
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post :create, presenter: {  }
    end

    assert_response 201
  end

  test "should show presenter" do
    get :show, id: @presenter
    assert_response :success
  end

  test "should update presenter" do
    put :update, id: @presenter, presenter: {  }
    assert_response 204
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete :destroy, id: @presenter
    end

    assert_response 204
  end
end
