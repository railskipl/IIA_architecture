class Admin::PicturesController < Admin::BaseController
	
	def index
		@pictures = Picture.find(:all)
	end
	
	def new
		@picture = Picture.new
	end
	
	def create
		@picture = Picture.new(params[:picture])
		if @picture.save
			flash[:notice] = "Picture Gallery Saved Successfully"
			redirect_to admin_pictures_path
		else
			render :new
		end
	end
	
	def edit
		@picture = Picture.find(params[:id])
	end
	
	def update
		@picture = Picture.find(params[:id])
		if @picture.update_attributes(params[:picture])
			flash[:notice] = "Picture Gallery Updated Successfully"
			redirect_to admin_pictures_path
		else
			render :new
		end
	end
	
	def destroy
		@picture = Picture.find(params[:id])
		
		if @picture.destroy
			flash[:notice] = "Picture Gallery Deleted succssfully "
			redirect_to admin_pictures_path
		end
	end
	
end
