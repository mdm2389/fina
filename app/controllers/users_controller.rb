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

  def edit 
  	@user = current_user 
  end

 def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end 
 end 

end
