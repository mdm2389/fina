class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pins = @user.pins
  	@articles =@user.articles
  	@links = @user.links
  end

  def index 
  	@users = User.all
  end

end
