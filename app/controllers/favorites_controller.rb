class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = Favorite.new(favorite_params)
  end

  def destroy
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
