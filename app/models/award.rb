class Award < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :albums, :dependent => :destroy
 accepts_nested_attributes_for :albums
end
