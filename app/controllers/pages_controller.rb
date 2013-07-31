class PagesController < ApplicationController
  def home
    @pins = Pin.order("created_at desc")
  end

  def about
  	@pins = Pin.order("created_at desc") 
  end 

  def communalsparks
  	@pins = Pin.order("created_at desc")  
  	@links = Link.order("created_at desc") 
  	@articles = Article.order("created_at desc")
  end

  def sharesomething
    @pin = Pin.new
    @link = Link.new
    @article = Article.new
  end

  def happenings
    @events = Event.order("created_at desc")
  end

end
