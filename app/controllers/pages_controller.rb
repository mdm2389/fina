class PagesController < ApplicationController
  def home
  end

  def about
  	@pins = Pin.order("created_at desc") 
  end 
end
