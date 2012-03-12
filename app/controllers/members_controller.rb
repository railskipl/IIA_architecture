class MembersController < ApplicationController
  
  def index
  	@members = Member.find(:all, :order => 'name asc').paginate(:per_page => 9, :page => params[:page])
  end
  
  def show
	@members = Member.find(params[:id])    
    respond_to do |format|
            format.js { render :action => 'pop' }
    end
    
  end
end
