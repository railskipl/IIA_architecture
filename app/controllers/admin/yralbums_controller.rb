class Admin::YralbumsController < Admin::BaseController
	# GET /uploads
  # GET /uploads.xml
  def index
    @yralbums = Yralbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.xml
  def show
    @yralbum = Yralbum.find(params[:id], :include => :book)
    @total_uploads = Yralbum.find(:all, :conditions => { :book_id => @yralbum.book.id})
    
    
  end

  # GET /uploads/new
  # GET /uploads/new.xml
  def new
    
    @yralbum = Yralbum.new

    
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.xml
  def create
      newparams = coerce(params)
      @yralbum = Yralbum.new(newparams[:yralbum])
      if @yralbum.save
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to @yralbum.book}
          format.json {render :json => { :result => 'success', :upload => admin_yralbum_path(@yralbum) } }
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
    @yralbum = Yralbum.find(params[:id])
    @yralbum.destroy
  
  end
  
  private 
  def coerce(params)
    if params[:yralbum].nil? 
      h = Hash.new 
      h[:yralbum] = Hash.new 
      h[:yralbum][:book_id] = params[:book_id]
      h[:yralbum][:yrphoto] = params[:Filedata] 
      h
    else 
      params
    end 
  end
end
