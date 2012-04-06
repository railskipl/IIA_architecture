class Admin::LalbumsController < Admin::BaseController
  
  # GET /uploads
  # GET /uploads.xml
  def index
    @lalbums = Lalbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.xml
  def show
    @lalbum = Lalbum.find(params[:id], :include => :lecture)
    @total_uploads = Lalbum.find(:all, :conditions => { :lecture_id => @lalbum.lecture.id})
    
    
  end

  # GET /uploads/new
  # GET /uploads/new.xml
  def new
    
    @lalbum = Lalbum.new

    
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.xml
  def create
      newparams = coerce(params)
      @lalbum = Lalbum.new(newparams[:lalbum])
      if @lalbum.save
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to @lalbum.lecture}
          format.json {render :json => { :result => 'success', :upload => admin_lalbum_path(@lalbum) } }
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
    @lalbum = Lalbum.find(params[:id])
    @lalbum.destroy
  
  end
  
  private 
  def coerce(params)
    if params[:lalbum].nil? 
      h = Hash.new 
      h[:lalbum] = Hash.new 
      h[:lalbum][:lecture_id] = params[:lecture_id]
      h[:lalbum][:lectphoto] = params[:Filedata] 
      h
    else 
      params
    end 
  end

end
