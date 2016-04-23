require 'test_helper'

class RentalsControllerTest < ActionController::TestCase
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentals)
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post :create, rental: { description: @rental.description, price: @rental.price, title: @rental.title }
    end

    assert_response 201
  end

  test "should show rental" do
    get :show, id: @rental
    assert_response :success
  end

  test "should update rental" do
    put :update, id: @rental, rental: { description: @rental.description, price: @rental.price, title: @rental.title }
    assert_response 204
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete :destroy, id: @rental
    end

    assert_response 204
  end
end
