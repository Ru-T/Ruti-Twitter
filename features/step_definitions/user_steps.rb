Given(/^I am not logged into the site$/) do
end

When(/^I visit the "(.*?)" page$/) do |arg1|
  visit arg1  
end

When(/^I enter my desired email address$/) do
  fill_in 'Email', with: 'newuser@test.com'
end

When(/^I enter my desired password$/) do
  fill_in 'Password', with: 'password' 
  fill_in 'Password confirmation', with: 'password'
end

When(/^I click submit$/) do
  click_on 'Sign up'
end

Then(/^I am presented with a flash message that says "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^I visit the "(.*?)" path$/) do |arg1|
  visit arg1
end

When(/^I enter my username or email$/) do
  FactoryGirl.create(:user)
  fill_in 'Email', with: 'newuser@sb.com'
end

When(/^I enter my password$/) do
  fill_in 'Password', with: 'password' 
end

When(/^I click "(.*?)"$/) do |arg1|
  click_on arg1
end

Given(/^I am logged into the site$/) do
  visit new_user_session_path
  FactoryGirl.create(:user)
  fill_in 'Email', with: 'newuser@sb.com' 
  fill_in 'Password', with: 'password' 
  click_on 'Log in'
end

When(/^I visit my own profile page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see my username$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can see my avatar$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can see my bio$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can see the number of tweets I have made$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can see my tweets$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I change my bio$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see my new bio$/) do
  pending # express the regexp above with the code you wish you had
end