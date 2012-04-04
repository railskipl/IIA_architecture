class Library < ActiveRecord::Base
	attr_accessible :book_name, :author, :description, :book_cover
	mount_uploader :book_cover, BookCoverUploader 
end
