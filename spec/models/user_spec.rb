require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user1) {FactoryGirl.create(:user)}
    let(:user2) {create(:user, email: "shs@test.com")}

    describe '#follow' do
      it "allows a user to follow another" do
        user1.follow(user2)
        expect(user2.followers).to include user1
      end
    end

    describe '#unfollow' do
      it "allows a user to unfollow another" do
        user1.follow(user2)
        user1.unfollow(user2)
        expect(user2.followers).to_not include user1
      end
    end

    describe '#following' do
      it "checks if a user is following another" do
        user1.follow(user2)
        expect(user1.following?(user2)).to eq true
        user1.unfollow(user2)
        expect(user1.following?(user2)).to eq false
      end
    end
end
