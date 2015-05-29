require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { ICD10code: @patient.ICD10code, adress: @patient.adress, city_patient: @patient.city_patient, firstname_patient: @patient.firstname_patient, id_insurer: @patient.id_insurer, name_patient: @patient.name_patient, patient_card_nr: @patient.patient_card_nr, pesel: @patient.pesel, phone_patient: @patient.phone_patient, zip_code_patient: @patient.zip_code_patient }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { ICD10code: @patient.ICD10code, adress: @patient.adress, city_patient: @patient.city_patient, firstname_patient: @patient.firstname_patient, id_insurer: @patient.id_insurer, name_patient: @patient.name_patient, patient_card_nr: @patient.patient_card_nr, pesel: @patient.pesel, phone_patient: @patient.phone_patient, zip_code_patient: @patient.zip_code_patient }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
