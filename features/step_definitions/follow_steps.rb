When(/^I visit the profile of another user$/) do
  FactoryGirl.create(:user2)
  visit user_path/"#{:user2.id}"
end

Then(/^I see my followed user's tweet$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on a user's profile$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I no longer see my followed user's tweet$/) do
  pending # express the regexp above with the code you wish you had
end
