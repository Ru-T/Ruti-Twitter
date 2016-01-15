class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    @follow = Follow.new(follow_params)
    @follow.follower_id = current_user.id

    if @follow.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def destroy
    @follow.destroy
    redirect_to tweets_path, notice: 'User has been unfollowed.'
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
