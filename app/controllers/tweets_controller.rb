class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show]
  before_action :authenticate_user!

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id

    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def index
    @tweets = Tweet.all
  end
  
  private
  
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # strong params
  def tweet_params
    params.require(:tweet).permit(
      :user_id, 
      :text
    )
  end
end