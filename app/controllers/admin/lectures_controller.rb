class Admin::LecturesController <  Admin::BaseController
	
	def index
		@lectures = Lecture.find(:all)
	end
	
	def new
		@lectures = Lecture.new
	end
	
	def create
		@lecture = Lecture.new(params[:lecture])
		if @lecture.save
			flash[:notce] = "Lecture is successfully saved"
		else
			render :new
		end
	end
	
	def edit
		@lecture = Lecture.find(params[:id])
	end
	
	def update
		@lecture = Lecture.find(params[:id])
		if @lecture.update_attributes(params[:lecture])
			flash[:notice] = "Lecture updated successfully"
			redirect_to admin_lectures_path
		else
			render :new
		end
	end
	
	def destroy
		@lecture = Lecture.find(params[:id])
		if @lecture.destroy
			flash[:notice] = "Lecture has been destroyed successfully"
			redirect_to admin_lectures_path
		end
	end 
end
