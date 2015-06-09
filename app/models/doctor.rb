class Doctor < ActiveRecord::Base
		has_many :appointments
		validates :name, :presence => true, uniqueness: true
		validates :surname, :presence => true, uniqueness: true
		validates :pwz_number, :presence => true, uniqueness: true

end
