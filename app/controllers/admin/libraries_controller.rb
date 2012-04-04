class Admin::LibrariesController < Admin::BaseController
	def index
		@libraries = Library.find(:all)
	end
	
	def new
    @libraries = Library.new
  end

  def create
    @library = Library.new(params[:library])
    if @library.save
      flash[:notice] = "Books Added to library successfully"
      redirect_to admin_libraries_path
    else
      render :new
    end
  end
  
  def edit
    @library = Library.find(params[:id])
  end

  def update
    @library = Library.find(params[:id])
    if @library.update_attributes(params[:library])
      flash[:notice] = "Book saved successfully"
      redirect_to admin_libraries_path
    else
      render :new
    end
  end
  

  def destroy
    @library = Library.find(params[:id])
   
    if @library.destroy
      flash[:notice] = "Book deleted successfully"
      redirect_to admin_libraries_path
    end
    
  end
end
