class Album < ActiveRecord::Base
  attr_accessible :award_id, :photo 
  belongs_to :award
  mount_uploader :photo, PhotoUploader
end
