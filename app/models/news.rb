class News < ActiveRecord::Base
	belongs_to :lecture
	attr_accessible :title, :description, :news_photo
	
	mount_uploader :news_photo, NewsPhotoUploader
	
end
