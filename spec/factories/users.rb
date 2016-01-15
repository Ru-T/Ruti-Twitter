FactoryGirl.define do
  factory :user do |user|
    user.email "newuser@sb.com"
    user.password "password"
    user.name "NewUser"
    user.bio "This is my bio."
    # user.avatar { Rack::Test::UploadedFile.new(File.join(Rails.root, 'uploads', 'user', 'avatar', '1', 'Screen_Shot.jpg')) }
  end
end
