class Category < ActiveRecord::Base
	has_many :categories
	validates :name_category, :presence => true, uniqueness: true
end
