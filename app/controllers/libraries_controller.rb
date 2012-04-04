class LibrariesController < ApplicationController
	layout 'news'

	def index
		@libraries = Library.find(:all, :order => 'created_at asc').paginate(:per_page => 5, :page => params[:page])
	end
	
	def show
	@libraries = Library.find(params[:id])    
    respond_to do |format|
            format.js { render :action => 'pop' }
    end
    
  end
end
