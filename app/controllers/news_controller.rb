class NewsController < ApplicationController
	layout 'news'
	
	def index
		@news = News.find(:all, :order => 'id asc').paginate(:per_page => 9, :page => params[:page])
		@lectures = Lecture.find(:all, :order => 'id asc').paginate(:per_page => 9, :page => params[:page])
	end
	
	def show
		@lectures = Lecture.find(params[:id])  
		 
	end
	
end
