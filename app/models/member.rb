class Member < ActiveRecord::Base
  attr_accessible :name, :title, :email, :phone, :address, :description, :reg_no, :image
  mount_uploader :image, ImageUploader 
end
