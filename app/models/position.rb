class Position < ActiveRecord::Base
	validates :name_category, :presence => true, uniqueness: true

end
