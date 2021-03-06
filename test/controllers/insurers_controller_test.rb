require 'test_helper'

class InsurersControllerTest < ActionController::TestCase
  setup do
    @insurer = insurers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurer" do
    assert_difference('Insurer.count') do
      post :create, insurer: { adress: @insurer.adress, city_insurer: @insurer.city_insurer, name_insurer: @insurer.name_insurer, zip_code_insurer: @insurer.zip_code_insurer }
    end

    assert_redirected_to insurer_path(assigns(:insurer))
  end

  test "should show insurer" do
    get :show, id: @insurer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurer
    assert_response :success
  end

  test "should update insurer" do
    patch :update, id: @insurer, insurer: { adress: @insurer.adress, city_insurer: @insurer.city_insurer, name_insurer: @insurer.name_insurer, zip_code_insurer: @insurer.zip_code_insurer }
    assert_redirected_to insurer_path(assigns(:insurer))
  end

  test "should destroy insurer" do
    assert_difference('Insurer.count', -1) do
      delete :destroy, id: @insurer
    end

    assert_redirected_to insurers_path
  end
end
