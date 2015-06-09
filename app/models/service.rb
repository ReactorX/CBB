class Service < ActiveRecord::Base
	belongs_to :categories
	belongs_to :appointments
end
