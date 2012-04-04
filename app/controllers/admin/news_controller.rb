class Admin::NewsController <  Admin::BaseController
	
	def index
		@news = News.find(:all)
	end
	
	def new
		@news = News.new
	end
	
	def create
		@news = News.new(params[:news])
		if @news.save
			flash[:notice] = "News created successfully"
       redirect_to admin_news_index_path
      else
      	render :new
		end
	end
	
	def edit
		@new = News.find(params[:id])
	end
	
	def update
		@news = News.find(params[:id])
		if @news.update_attributes(params[:news])
			flash[:notice] = "News saved successfully"
       		redirect_to admin_news_path
       	else
       		render :new
		end
	end
	
	def destroy
     @news = News.find(params[:id])

     if @news.destroy
       flash[:notice] = "News deleted successfully"
       redirect_to admin_news_path
     end

   end
    
	
	
end
