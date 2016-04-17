require 'test_helper'

class TrainingsControllerTest < ActionController::TestCase
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainings)
  end

  test "should create training" do
    assert_difference('Training.count') do
      post :create, training: { description: @training.description, price: @training.price, title: @training.title }
    end

    assert_response 201
  end

  test "should show training" do
    get :show, id: @training
    assert_response :success
  end

  test "should update training" do
    put :update, id: @training, training: { description: @training.description, price: @training.price, title: @training.title }
    assert_response 204
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete :destroy, id: @training
    end

    assert_response 204
  end
end
