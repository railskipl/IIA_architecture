class Admin::WinnersController < Admin::BaseController
	
	def index
		@winners = Winner.find(:all)
	end
	
	def new
		@winner = Winner.new
	end
	
	def create
		@winner = Winner.new(params[:winner])
			if @winner.save
				flash[:notice] = "Award Winning entry created succssfully"
				redirect_to admin_winners_path
			else
				render :new
			end
	end
	
	def show
		@winner = Winner.find(params[:id])
	end
	
	def edit
		@winner = Winner.find(params[:id])
	end
	
	def update
    @winner = Winner.find(params[:id])
    if @winner.update_attributes(params[:winner])
      flash[:notice] = "Award Winning entry updated successfully"
      redirect_to admin_winner_path
    else
      render :new
    end
  end

	
	def destroy
		@winner = Winner.find(params[:id])
		if @winner.destroy
			flash[:notice] = "Award Winning entry destroyed successfully"
			redirect_to admin_winners_path
		end
	end
end
