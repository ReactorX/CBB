class Insurer < ActiveRecord::Base
	has_many :patients
	validates :name_insurer, :presence => true
	validates :adress, :presence => true
	validates :zip_code_insurer, :presence => true
	validates :city_insurer, :presence => true
end
