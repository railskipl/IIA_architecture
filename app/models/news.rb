class News < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :lalbums
	attr_accessible :title, :description, :news_photo
	
	accepts_nested_attributes_for :lalbums
	
end
