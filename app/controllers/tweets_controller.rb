class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show]

  def show
  end

  def new
    @tweet = Tweet.new
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
    params.require(:tweet).permit(:user_id, :text)
  end
end