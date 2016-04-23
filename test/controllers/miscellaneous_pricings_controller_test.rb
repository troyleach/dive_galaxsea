require 'test_helper'

class MiscellaneousPricingsControllerTest < ActionController::TestCase
  setup do
    @miscellaneous_pricing = miscellaneous_pricings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscellaneous_pricings)
  end

  test "should create miscellaneous_pricing" do
    assert_difference('MiscellaneousPricing.count') do
      post :create, miscellaneous_pricing: { description: @miscellaneous_pricing.description, price: @miscellaneous_pricing.price, title: @miscellaneous_pricing.title }
    end

    assert_response 201
  end

  test "should show miscellaneous_pricing" do
    get :show, id: @miscellaneous_pricing
    assert_response :success
  end

  test "should update miscellaneous_pricing" do
    put :update, id: @miscellaneous_pricing, miscellaneous_pricing: { description: @miscellaneous_pricing.description, price: @miscellaneous_pricing.price, title: @miscellaneous_pricing.title }
    assert_response 204
  end

  test "should destroy miscellaneous_pricing" do
    assert_difference('MiscellaneousPricing.count', -1) do
      delete :destroy, id: @miscellaneous_pricing
    end

    assert_response 204
  end
end
