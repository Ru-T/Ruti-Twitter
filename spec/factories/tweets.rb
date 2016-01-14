FactoryGirl.define do
  factory :tweet do |tweet|
    tweet.text "This is a Tweet."
    tweet.user_id "1"
  end
end