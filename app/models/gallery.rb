class Gallery < ActiveRecord::Base
	attr_accessible :architect_id, :pic
	belongs_to :architect
	mount_uploader :pic, PicUploader
end
