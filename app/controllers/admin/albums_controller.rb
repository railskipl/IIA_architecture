class Admin::AlbumsController <  Admin::BaseController
  
  # GET /uploads
  # GET /uploads.xml
  def index
    @albums = Album.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.xml
  def show
    @album = Album.find(params[:id], :include => :award)
    @total_uploads = Album.find(:all, :conditions => { :award_id => @album.award.id})
    
    
  end

  # GET /uploads/new
  # GET /uploads/new.xml
  def new
    
    @album = Album.new

    
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.xml
  def create
      newparams = coerce(params)
      @album = Album.new(newparams[:album])
      if @album.save
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to @album.award}
          format.json {render :json => { :result => 'success', :upload => admin_album_path(@album) } }
        end
      else
        render :action => 'new'
      end
    end

  # PUT /uploads/1
  # PUT /uploads/1.xml
  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to(@upload, :notice => 'Upload was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.xml
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
  
  end
  
  private 
  def coerce(params)
    if params[:album].nil? 
      h = Hash.new 
      h[:album] = Hash.new 
      h[:album][:award_id] = params[:award_id]
      h[:album][:photo] = params[:Filedata] 
      h
    else 
      params
    end 
  end
end
