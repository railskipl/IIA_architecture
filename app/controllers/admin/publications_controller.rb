class Admin::PublicationsController < Admin::BaseController
  
  
  def index
    @publications = Publication.find(:all)
  end

  def new
    @publications = Publication.new
  end

  def create
    @publication = Publication.new(params[:publication])
    if @publication.save
      flash[:notice] = "Publication created successfully"
      redirect_to admin_publications_path
    else
      render :new
    end
  end
  
  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    if @publication.update_attributes(params[:publication])
      flash[:notice] = "Publication saved successfully"
      redirect_to admin_publications_path
    else
      render :new
    end
  end
  

  def destroy
    @publication = Publication.find(params[:id])
   
    if @publication.destroy
      flash[:notice] = "Publication deleted successfully"
      redirect_to admin_publications_path
    end
    
  end
end
