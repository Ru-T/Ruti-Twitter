FactoryGirl.define do
  factory :user do |user|
    user.email "newuser@sb.com"
    user.password "password"
    user.name "NewUser"
    user.bio "This is my bio."
    # user.avatar {fixture_file_upload 'Screen_Shot.png', 'image/png'}
  end
end
