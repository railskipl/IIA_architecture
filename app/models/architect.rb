class Architect < ActiveRecord::Base
	attr_accessible :title
	has_many :galleries, :dependent => :destroy
	accepts_nested_attributes_for :galleries
end
