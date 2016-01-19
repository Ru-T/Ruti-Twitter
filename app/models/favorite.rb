class Favorite < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :user

  validates :user, presence: true
  validates :tweet_id, presence: true
end
