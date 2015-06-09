class Patient < ActiveRecord::Base
	belongs_to :insurer
	validates :pesel, :presence => true, uniqueness: true
	validates :name_patient, :presence => true
	validates :firstname_patient, :presence => true
	validates :adress, :presence => true
	validates :city_patient, :presence => true
	validates :zip_code_patient, :presence => true
	validates :phone_patient, :presence => true, uniqueness: true
	validates :patient_card_nr, :presence => true, uniqueness: true
	validates :ICD10code, :presence => true, uniqueness: true
end
