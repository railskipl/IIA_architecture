class Admin::PalbumsController < Admin::BaseController
	# GET /uploads
  # GET /uploads.xml
  def index
    @palbums = Palbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.xml
  def show
    @palbum = Palbum.find(params[:id], :include => :picture)
    @total_uploads = Palbum.find(:all, :conditions => { :picture_id => @palbum.picture.id})
    
    
  end

  # GET /uploads/new
  # GET /uploads/new.xml
  def new
    
    @palbum = Palbum.new

    
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.xml
  def create
      newparams = coerce(params)
      @palbum = Palbum.new(newparams[:palbum])
      if @palbum.save
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to @palbum.picture}
          format.json {render :json => { :result => 'success', :upload => admin_palbum_path(@palbum) } }
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
    @palbum = Palbum.find(params[:id])
    @palbum.destroy
  
  end
  
  private 
  def coerce(params)
    if params[:palbum].nil? 
      h = Hash.new 
      h[:palbum] = Hash.new 
      h[:palbum][:picture_id] = params[:picture_id]
      h[:palbum][:galphoto] = params[:Filedata] 
      h
    else 
      params
    end 
  end
end
