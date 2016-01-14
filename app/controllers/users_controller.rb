class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end

  # strong params
  def user_params
    params.require(:user).permit(
      :name, 
      :bio, 
      :avatar
    )
  end
end