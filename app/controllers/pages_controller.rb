class PagesController < ApplicationController
  def home
  end

  def about
  	@pins = Pin.order("created_at desc") 
  end 

  def communalsparks
  	@pins = Pin.order("created_at desc")  
  	@links = Link.order("created_at desc") 
  	@articles = Article.order("created_at desc") 
  end
end
