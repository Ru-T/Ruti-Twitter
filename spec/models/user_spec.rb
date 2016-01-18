require 'rails_helper'

RSpec.describe User, type: :model do

    describe '#follow' do
      it "allows a user to follow another" do
        user1 = FactoryGirl.create(:user)
        user2 = FactoryGirl.create(:user, email: "newuser2@sb.com")
        user1.follow(user2)
        expect(user1.following?(user2)).to eq true
        expect(user2.followers).to include user1
      end
    end

    describe '#unfollow' do
      it "allows a user to unfollow another" do
        user1 = FactoryGirl.create(:user)
        user2 = FactoryGirl.create(:user, email: "newuser2@sb.com")
        user1.follow(user2)
        user1.unfollow(user2)
        expect(user1.following?(user2)).to eq false
        expect(user2.followers).to_not include user1
      end
    end
end
