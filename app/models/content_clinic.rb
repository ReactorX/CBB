class ContentClinic < ActiveRecord::Base
	has_many :appointments
	validates :name_clinic, :presence => true, uniqueness: true
	validates :adress_clinic, :presence => true, uniqueness: true
	validates :zip_code_clinic, :presence => true, uniqueness: true
	validates :city_clinic, :presence => true, uniqueness: true
end
