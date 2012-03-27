class Publication < ActiveRecord::Base
	attr_accessible :title, :author, :description, :pdf
	mount_uploader :pdf, PdfUploader 
end
