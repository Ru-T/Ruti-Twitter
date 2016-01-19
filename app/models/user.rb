class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :tweets
  has_many :favorites
  has_many :favorite_tweets, through: :favorites, source: :tweet

  has_many :follows, foreign_key: "follower_id"
  has_many :followed_users, through: :follows, source: :followed

  has_many :passive_follows, class_name: "Follow",
                          foreign_key: "followed_id"
  has_many :followers, through: :passive_follows

  def feed
    Tweet.joins(:user)
    .where(id: user.followed_users.map(&:id))
    .order('created_at DESC')
  end

  def follow(another_user)
    follows.create!(followed_id: another_user.id)
  end

  def unfollow(another_user)
    follows.find_by_followed_id(another_user.id).destroy
  end

  def following?(another_user)
    followed_users.include?(another_user)
  end

  def favorite(tweet)
    favorites.create!(tweet_id: tweet.id)
  end

  def unfavorite(tweet)
    favorites.find_by_tweet_id(tweet.id).destroy
  end

  def favorited?(tweet)
    favorite_tweets.include?(tweet)
  end

end
