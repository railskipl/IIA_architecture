class AwardsController < ApplicationController
  
  def index
    @awards = Award.find(:all).paginate(:per_page => 9, :page => params[:page])
  end
  
  def show
  	@awards = Award.find(params[:id])
  	
  end
end
