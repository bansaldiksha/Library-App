class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  	@users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    if @user.destroy
        redirect_to users_path, notice: "User deleted."
    else
    	render :index
    end
  end
end
