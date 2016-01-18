class Tweet < ActiveRecord::Base
  belongs_to :user
  default_scope { order(created_at: :desc) }

  has_many :favorites

  validates :user_id, presence: true
  validates :text, presence: true, length: {maximum: 140}
end
