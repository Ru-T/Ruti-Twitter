When(/^I visit a user's profile$/) do
  @user2 = FactoryGirl.create(:user, id: 2, email: "newuser2@sb.com")
  visit "users/2"
end

Then(/^I see my followed user's tweet$/) do
  tweet = FactoryGirl.create(:tweet, user: @user2, text: "This is a tweet!")
  expect(page).to have_content(tweet)
end

Then(/^I no longer see my followed user's tweet$/) do
  tweet = FactoryGirl.create(:tweet, user: @user2, text: "This is a tweet!")
  expect(page).to_not have_content(tweet)
end
