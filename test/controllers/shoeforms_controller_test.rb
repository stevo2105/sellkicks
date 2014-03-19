require 'test_helper'

class ShoeformsControllerTest < ActionController::TestCase
  setup do
    @shoeform = shoeforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoeforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoeform" do
    assert_difference('Shoeform.count') do
      post :create, shoeform: { condition: @shoeform.condition, contact_email: @shoeform.contact_email, description: @shoeform.description, img_url: @shoeform.img_url, phone_number: @shoeform.phone_number, price: @shoeform.price, size: @shoeform.size }
    end

    assert_redirected_to shoeform_path(assigns(:shoeform))
  end

  test "should show shoeform" do
    get :show, id: @shoeform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoeform
    assert_response :success
  end

  test "should update shoeform" do
    patch :update, id: @shoeform, shoeform: { condition: @shoeform.condition, contact_email: @shoeform.contact_email, description: @shoeform.description, img_url: @shoeform.img_url, phone_number: @shoeform.phone_number, price: @shoeform.price, size: @shoeform.size }
    assert_redirected_to shoeform_path(assigns(:shoeform))
  end

  test "should destroy shoeform" do
    assert_difference('Shoeform.count', -1) do
      delete :destroy, id: @shoeform
    end

    assert_redirected_to shoeforms_path
  end
end
