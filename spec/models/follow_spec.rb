require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'validations' do
    it "is valid with both followed_id and follower_id" do
      expect(FactoryGirl.build(:follow)).to be_valid
    end

    it "must have both ids to be valid" do
      expect(FactoryGirl.build(:follow, follower_id: 1, followed_id: nil)).to_not be_valid
    end

    it "must have both ids to be valid" do
      expect(FactoryGirl.build(:follow, followed_id: 1, follower_id: nil)).to_not be_valid
    end
  end
end
