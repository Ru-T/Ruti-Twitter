require 'rails_helper'

RSpec.describe Tweet, type: :model do

  describe '.default scope' do
    tweet_two = FactoryGirl.create(:tweet)
    tweet_one = FactoryGirl.create(:tweet)

    it 'orders by most recently posted' do
      expect(Tweet.all).to eq [tweet_one, tweet_two]
    end
  end  

  describe 'validations' do

    it "is valid with both user_id and text" do
      expect(FactoryGirl.build(:tweet)).to be_valid    
    end

    it "must have text to be valid" do
      expect(FactoryGirl.build(:tweet, user_id: 1, text: "")).to_not be_valid
    end

    it "must have user_id to be valid" do
      expect(FactoryGirl.build(:tweet, text: "I am a tweet.", user_id: nil)).to_not be_valid
    end
  
  end  




end
