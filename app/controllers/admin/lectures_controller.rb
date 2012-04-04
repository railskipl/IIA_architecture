class Admin::LecturesController <  Admin::BaseController
	
	def index
     @lectures = Lecture.find(:all)
  end
  
  def new
    @lecture = Lecture.new
  end
  
  def create
     @lecture = Lecture.new(params[:lecture])
     if @lecture.save
       flash[:notice] = "Lecture created successfully"
       redirect_to admin_lectures_path
     else
       render :new
     end
   end
   
   def show
     @lecture = Lecture.find(params[:id])
   end

   def edit
     @lecture = Lecture.find(params[:id])
   end

   def update
     @lecture = Lecture.find(params[:id])
     if @lecture.update_attributes(params[:lecture])
       flash[:notice] = "Lecture saved successfully"
       redirect_to admin_lectures_path
     else
       render :new
     end
   end


   def destroy
     @lecture = Lecture.find(params[:id])

     if @lecture.destroy
       flash[:notice] = "Lecture deleted successfully"
       redirect_to admin_lectures_path
     end

   end
	
end
