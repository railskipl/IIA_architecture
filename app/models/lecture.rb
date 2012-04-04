class Lecture < ActiveRecord::Base
	belongs_to :news
	attr_accessible :title, :description, :lphoto
	mount_uploader :lphoto, LphotoUploader
end
