class Admin::PicturesController <  Admin::BaseController
  
  def index
     @pictures = Picture.find(:all)
  end
  
  def new
    @picture = Picture.new
  end
  
  def create
     @picture = Picture.new(params[:picture])
     if @picture.save
       flash[:notice] = "Gallery created successfully"
       redirect_to admin_pictures_path
     else
       render :new
     end
   end
   
   def show
     @picture = Picture.find(params[:id], :include => :palbums)
   end

   def edit
     @picture = Picture.find(params[:id])
   end

   def update
     @picture = Picture.find(params[:id])
     if @picture.update_attributes(params[:picture])
       flash[:notice] = "Gallery saved successfully"
       redirect_to admin_pictures_path
     else
       render :new
     end
   end


   def destroy
     @picture = Picture.find(params[:id])

     if @picture.destroy
       flash[:notice] = "Gallery deleted successfully"
       redirect_to admin_pictures_path
     end

   end
  
end
