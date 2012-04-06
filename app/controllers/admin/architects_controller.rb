class Admin::ArchitectsController <  Admin::BaseController
	
 def index
     @architects = Architect.find(:all)
  end
  
  def new
    @architect = Architect.new
  end
  
  def create
     @architect = Architect.new(params[:architect])
     if @architect.save
       flash[:notice] = "Architect created successfully"
       redirect_to admin_architects_path
     else
       render :new
     end
   end
   
   def show
     @architect = Architect.find(params[:id], :include => :galleries)
   end

   def edit
     @architect = Architect.find(params[:id])
   end

   def update
     @architect = Architect.find(params[:id])
     if @architect.update_attributes(params[:architect])
       flash[:notice] = "Award saved successfully"
       redirect_to admin_architects_path
     else
       render :new
     end
   end


   def destroy
     @architect = Architect.find(params[:id])

     if @architect.destroy
       flash[:notice] = "Acrhitect deleted successfully"
       redirect_to admin_architects_path
     end

   end
	
end
