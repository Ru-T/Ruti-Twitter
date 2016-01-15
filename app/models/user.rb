class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :tweets
  has_many :active_follows, class_name: "Follow",
                          foreign_key: "follower_id"
  has_many :passive_follows, class_name: "Follow",
                          foreign_key: "followed_id"
  has_many :followeds, through: :active_follows
  has_many :followers, through: :passive_follows

  def follow(another_user)
    self.followeds << another_user
    another_user.followers << self
  end

  def unfollow(another_user)
    self.followeds.delete(another_user)
    another_user.followers.delete(self)
  end

end
