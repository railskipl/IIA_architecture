class Admin::AwardsController <  Admin::BaseController
  
  def index
     @awards = Award.find(:all)
  end
  
  def new
    @award = Award.new
  end
  
  def create
     @award = Award.new(params[:award])
     if @award.save
       flash[:notice] = "Award created successfully"
       redirect_to admin_awards_path
     else
       render :new
     end
   end
   
   def show
     @award = Award.find(params[:id], :include => :albums)
   end

   def edit
     @award = Award.find(params[:id])
   end

   def update
     @award = Award.find(params[:id])
     if @award.update_attributes(params[:award])
       flash[:notice] = "Award saved successfully"
       redirect_to admin_awards_path
     else
       render :new
     end
   end


   def destroy
     @award = Award.find(params[:id])

     if @award.destroy
       flash[:notice] = "Award deleted successfully"
       redirect_to admin_awards_path
     end

   end
    
end
