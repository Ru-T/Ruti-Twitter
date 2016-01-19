include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :user do |user|
    user.email "newuser@sb.com"
    user.password "password"
    user.name "NewUser"
    user.bio "This is my bio."
    user.avatar File.new('./spec/fixtures/images/Screen_Shot.png')
  end

  factory :user2 do |user2|
    user2.email "newuser2@sb.com"
    user2.password "password"
    user2.name "NewUser2"
    user2.bio "This is my bio."
    # user.tweets ["This is my first tweet", "This is my second tweet"]
  end
end
