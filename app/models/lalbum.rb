class Lalbum < ActiveRecord::Base
	belongs_to :lecture
	mount_uploader :lectphoto, LectphotoUploader
end
