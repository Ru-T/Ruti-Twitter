Given(/^I am not logged into the site$/) do
end

When(/^I visit the "(.*?)" page$/) do |page|
  visit page
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

Then(/^I am presented with a flash message that says "(.*?)"$/) do |flash|
  expect(page).to have_content(flash)
end

When(/^I visit the "(.*?)" path$/) do |path|
  visit path
end

When(/^I enter my username or email$/) do
  FactoryGirl.create(:user)
  fill_in 'Email', with: 'newuser@sb.com'
end

When(/^I enter my password$/) do
  fill_in 'Password', with: 'password'
end

When(/^I click "(.*?)"$/) do |button|
  click_on button
end

Given(/^I am logged into the site$/) do
  visit new_user_session_path
  FactoryGirl.create(:user)
  fill_in 'Email', with: 'newuser@sb.com'
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end

When(/^I visit my own profile page$/) do
 visit root_path
end

Then(/^I see my username$/) do
  expect(page).to have_content("NewUser")
end

Then(/^I can see my avatar$/) do
  visit page.find('#avatar')[:src]
  expect(page).to have_css('#avatar')
end

Then(/^I can see my bio$/) do
  expect(page).to have_content("This is my bio.")
end

Then(/^I can see the number of tweets I have made$/) do
  click_on 'Create Tweet'
  fill_in 'Text', with: 'This is a Tweet'
  click_on 'Create Tweet'
  visit root_path
  expect(page).to have_content("1 Tweets")
end

Then(/^I can see my tweets$/) do
  expect(page).to have_content("This is a Tweet")
end

When(/^I change my bio$/) do
  fill_in 'Bio', with: "This is my bio with edits."
end

Then(/^I see my new bio$/) do
  expect(page).to have_content("This is my bio with edits.")
end
