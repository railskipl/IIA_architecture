class Admin::StudentsController < Admin::BaseController
	def index
		@students = Student.find(:all)
	end
	
	def new
		@student = Student.new
	end
	
	def create
		@student = Student.new(params[:student])
			if @student.save
				flash[:notice] = "Student Competition created succssfully"
				redirect_to admin_students_path
			else
				render :new
			end
	end
	
	def show
		@student = Student.find(params[:id])
	end
	
	def edit
		@student = Student.find(params[:id])
	end
	
	def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      flash[:notice] = "Student Competition updated successfully"
      redirect_to admin_student_path
    else
      render :new
    end
  end

	
	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			flash[:notice] = "Student Competition destroyed successfully"
			redirect_to admin_students_path
		end
	end
end
