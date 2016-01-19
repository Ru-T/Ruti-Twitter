class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    tweet = Tweet.find(params[:tweet_id])
    current_user.favorite(tweet)
    redirect_to following_users_path, notice: "Tweet favorited."
  end

  def destroy
    tweet = Favorite.find(params[:id]).tweet
    current_user.unfavorite(tweet)
    redirect_to following_users_path, notice: "Tweet unfavorited."
  end

  private

  # strong params
  def favorite_params
    params.require(:favorite).permit(
      :user_id,
      :tweet_id
    )
  end
end
