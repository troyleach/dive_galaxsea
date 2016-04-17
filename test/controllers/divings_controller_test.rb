require 'test_helper'

class DivingsControllerTest < ActionController::TestCase
  setup do
    @diving = divings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divings)
  end

  test "should create diving" do
    assert_difference('Diving.count') do
      post :create, diving: { description: @diving.description, price: @diving.price, title: @diving.title }
    end

    assert_response 201
  end

  test "should show diving" do
    get :show, id: @diving
    assert_response :success
  end

  test "should update diving" do
    put :update, id: @diving, diving: { description: @diving.description, price: @diving.price, title: @diving.title }
    assert_response 204
  end

  test "should destroy diving" do
    assert_difference('Diving.count', -1) do
      delete :destroy, id: @diving
    end

    assert_response 204
  end
end
