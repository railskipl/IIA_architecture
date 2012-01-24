class CommitteesController < ApplicationController
  
  def member
    
  end
  
  def show
    @committee = Committee.find(params[:id])
  end
end
