class Admin::GalleriesController < Admin::BaseController
	# GET /uploads
  # GET /uploads.xml
  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.xml
  def show
    @gallery = Gallery.find(params[:id], :include => :architect)
    @total_uploads = Gallery.find(:all, :conditions => { :architect_id => @gallery.architect.id})
    
    
  end

  # GET /uploads/new
  # GET /uploads/new.xml
  def new
    
    @gallery = Gallery.new

    
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.xml
  def create
      newparams = coerce(params)
      @gallery = Gallery.new(newparams[:gallery])
      if @gallery.save
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to @gallery.architect}
          format.json {render :json => { :result => 'success', :upload => admin_gallery_path(@gallery) } }
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
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
  
  end
  
  private 
  def coerce(params)
    if params[:gallery].nil? 
      h = Hash.new 
      h[:gallery] = Hash.new 
      h[:gallery][:architect_id] = params[:architect_id]
      h[:gallery][:pic] = params[:Filedata] 
      h
    else 
      params
    end 
  end
end
