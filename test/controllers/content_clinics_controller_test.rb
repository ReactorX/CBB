require 'test_helper'

class ContentClinicsControllerTest < ActionController::TestCase
  setup do
    @content_clinic = content_clinics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_clinics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_clinic" do
    assert_difference('ContentClinic.count') do
      post :create, content_clinic: { adress_clinic: @content_clinic.adress_clinic, city_linic: @content_clinic.city_linic, name_clinic: @content_clinic.name_clinic, zip_code_clinic: @content_clinic.zip_code_clinic }
    end

    assert_redirected_to content_clinic_path(assigns(:content_clinic))
  end

  test "should show content_clinic" do
    get :show, id: @content_clinic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_clinic
    assert_response :success
  end

  test "should update content_clinic" do
    patch :update, id: @content_clinic, content_clinic: { adress_clinic: @content_clinic.adress_clinic, city_linic: @content_clinic.city_linic, name_clinic: @content_clinic.name_clinic, zip_code_clinic: @content_clinic.zip_code_clinic }
    assert_redirected_to content_clinic_path(assigns(:content_clinic))
  end

  test "should destroy content_clinic" do
    assert_difference('ContentClinic.count', -1) do
      delete :destroy, id: @content_clinic
    end

    assert_redirected_to content_clinics_path
  end
end
