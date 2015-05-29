class Insurer < ActiveRecord::Base
	has_many :patients
end
