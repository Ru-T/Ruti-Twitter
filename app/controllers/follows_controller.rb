class FollowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @follows = Follow.where(follower_id: current_user.id)
  end

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    @follow.follower_id = current_user.id

    if @follow.save
      redirect_to follows_path
    else
      render :new
    end
  end

  def destroy
    user = Follow.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to follows_path, notice: 'User has been unfollowed.'
  end

  private

  # strong params
  def follow_params
    params.require(:follow).permit(
      :follower_id,
      :followed_id
    )
  end
end
