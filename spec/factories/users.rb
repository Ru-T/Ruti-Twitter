FactoryGirl.define do
  factory :user do |user|
    user.email "newuser@sb.com"
    user.password "password"
  end
end