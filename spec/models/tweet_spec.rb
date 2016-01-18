require 'rails_helper'

RSpec.describe Tweet, type: :model do

  let(:tweet) {FactoryGirl.create(:tweet)}
  let(:tweet_one) {create(:tweet)}

  describe '.default scope' do
    it 'orders by most recently posted' do
      tweet_two = FactoryGirl.create(:tweet)
      expect(Tweet.first).to eq tweet_two
    end
  end

  describe 'validations' do
    it "is valid with both user_id and text" do
      expect(FactoryGirl.build(:tweet)).to be_valid
    end

    it "must have text to be valid" do
      expect(FactoryGirl.build(:tweet, text: "")).to_not be_valid
    end

    it "must have user_id to be valid" do
      expect(FactoryGirl.build(:tweet, user_id: nil)).to_not be_valid
    end

    it "must be under 140 characters" do
      expect(FactoryGirl.build(:tweet, text: "a" * 141)).to_not be_valid
    end
  end

  describe '#favorite' do
    it "favorites a tweet" do
      tweet.favorite
      expect(tweet.favorited?).to eq true
    end
  end

  describe '#unfavorite' do
    it "unfavorites a tweet" do
      tweet.favorite
      tweet.unfavorite
      expect(tweet.favorited?).to eq false
    end
  end

end
