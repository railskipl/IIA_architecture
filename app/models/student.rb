class Student < ActiveRecord::Base
	attr_accessible :comp_title, :comp_description, :comp_photo
	mount_uploader :comp_photo, CompPhotoUploader	
end
