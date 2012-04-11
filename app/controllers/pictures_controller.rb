class PicturesController < ApplicationController
	layout 'pictures'
	
	def index
  		@pictures = Palbum.find(:all)
  		
    end
  
end
