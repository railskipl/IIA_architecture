class StudentsController < ApplicationController
	layout 'news'
	
	def index
		@students = Student.find(:all, :order => 'id asc').paginate(:per_page => 3, :page => params[:page])
		@winners = Winner.find(:all, :order => 'id asc').paginate(:per_page => 3, :page => params[:page])
	end
	
	
	
end
