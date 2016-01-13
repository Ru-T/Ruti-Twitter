FactoryGirl.define do
  factory :user do |f|
    f.email "newuser@sb.com"
    f.password "password"
  end
end