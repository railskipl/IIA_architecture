class BooksController < ApplicationController
	
	layout 'members'
	
	def index
  		@books = Book.find(:all).paginate(:per_page => 2, :page => params[:page])
  		
  	end
  	def show
	@yralbums = Yralbum.find(params[:id])    
    respond_to do |format|
            format.js { render :action => 'pop' }
    end
    
  end
end
