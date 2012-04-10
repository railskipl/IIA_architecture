class Winner < ActiveRecord::Base
	attr_accessible :title, :description, :winner_photo
	mount_uploader :winner_photo, WinnerPhotoUploader
end
