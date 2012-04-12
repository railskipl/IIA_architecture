class Yralbum < ActiveRecord::Base
	attr_accessible :book_id, :yrphoto
	belongs_to :book
	mount_uploader :yrphoto, YrphotoUploader
end
