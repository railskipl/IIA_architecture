class Lecture < ActiveRecord::Base
	belongs_to :news
	has_many :lalbums, :dependent => :destroy
	attr_accessible :title, :description, :lphoto
	mount_uploader :lectphoto, LectphotoUploader
	accepts_nested_attributes_for :lalbums
end
