class Picture < ActiveRecord::Base
	attr_accessible :title
  has_many :palbums, :dependent => :destroy
  accepts_nested_attributes_for :palbums
  mount_uploader :galphoto, GalphotoUploader
end
