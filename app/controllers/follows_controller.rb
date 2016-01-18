class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to user, notice: "User has been followed."
  end

  def destroy
    user = Follow.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user, notice: 'User has been unfollowed.'
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
