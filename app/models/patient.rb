class Patient < ActiveRecord::Base
	belongs_to :insurers
end
