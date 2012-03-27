class PublicationsController < ApplicationController
	layout'members'
	
	def index
		@publications = Publication.find(:all, :order => 'created_at asc').paginate(:per_page => 9, :page => params[:page])
	end
	
	def show
	@publications = Publication.find(params[:id])    
    respond_to do |format|
            format.js { render :action => 'pop' }
    end
    
  end
		
end
