class HomeController < ApplicationController
  
  def index
  	@news = News.find(:all)
  end
  
end
