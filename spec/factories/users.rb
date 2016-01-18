include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :user do |user|
    user.email "newuser@sb.com"
    user.password "password"
    user.name "NewUser"
    user.bio "This is my bio."
    user.avatar File.new('./spec/fixtures/images/Screen_Shot.png')
  end
end
