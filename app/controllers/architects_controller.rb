class ArchitectsController < ApplicationController
	def index
    @architects = Architect.find(:all, :order => 'id asc').paginate(:per_page => 9, :page => params[:page])
  end
  
  def show
  	@architects = Architect.find(params[:id])
  	
  end
end
