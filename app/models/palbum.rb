class Palbum < ActiveRecord::Base
  attr_accessible :picture_id, :galphoto 
  belongs_to :picture
  mount_uploader :galphoto, GalphotoUploader
end
