class CommitteesController < ApplicationController
  
  def member
    
  end
  
  def index
  	@committees = Committee.find(:all, :order => 'name asc').paginate(:per_page => 9, :page => params[:page])
  end
  
  def show
    @committee = Committee.find(params[:id])
  end
end
