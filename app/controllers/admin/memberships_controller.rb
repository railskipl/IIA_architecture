class Admin::MembershipsController <  Admin::BaseController
	def index
		@memberships = Membership.find(:all)
	end
	
	def new
		@membership = Membership.new
	end
	
	def create
		@membership = Membership.new(params[:membership])
			if @membership.save
				flash[:notice] = "Membership created succssfully"
				redirect_to admin_memberships_path
			else
				render :new
			end
	end
	
	def show
		@membership = Membership.find(params[:id])
	end
	
	def edit
		@membership = Membership.find(params[:id])
	end
	
	def update
    @membership = Membership.find(params[:id])
    if @membership.update_attributes(params[:membership])
      flash[:notice] = "Membership saved successfully"
      redirect_to admin_membership_path
    else
      render :new
    end
  end

	
	def destroy
		@membership = Membership.find(params[:id])
		if @membership.destroy
			flash[:notice] = "Membership document destroyed successfully"
			redirect_to admin_memberships_path
		end
	end
end
