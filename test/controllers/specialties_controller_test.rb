require 'test_helper'

class SpecialtiesControllerTest < ActionController::TestCase
  setup do
    @specialty = specialties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialties)
  end

  test "should create specialty" do
    assert_difference('Specialty.count') do
      post :create, specialty: { description: @specialty.description, price: @specialty.price, title: @specialty.title }
    end

    assert_response 201
  end

  test "should show specialty" do
    get :show, id: @specialty
    assert_response :success
  end

  test "should update specialty" do
    put :update, id: @specialty, specialty: { description: @specialty.description, price: @specialty.price, title: @specialty.title }
    assert_response 204
  end

  test "should destroy specialty" do
    assert_difference('Specialty.count', -1) do
      delete :destroy, id: @specialty
    end

    assert_response 204
  end
end
