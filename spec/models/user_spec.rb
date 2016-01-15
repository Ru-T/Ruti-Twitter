require 'rails_helper'

RSpec.describe User, type: :model do

    describe '#follow' do
      it "allows a user to follow another" do
        user1 = FactoryGirl.build(:user)
        user2 = FactoryGirl.build(:user)
        user1.follow(user2)
        expect(user1.followeds).to include user2
      end
    end

    describe '#unfollow' do
      it "allows a user to unfollow another" do
        user1 = FactoryGirl.build(:user)
        user2 = FactoryGirl.build(:user)
        user1.follow(user2)
        user1.unfollow(user2)
        expect(user1.followeds).to eq []
      end
    end
end
