class Book < ActiveRecord::Base
	attr_accessible :title, :yrpdf
	has_many :yralbums, :dependent => :destroy
	accepts_nested_attributes_for :yralbums
	mount_uploader :yrpdf, YrpdfUploader
end
