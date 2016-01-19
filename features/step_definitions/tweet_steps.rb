When(/^I fill in a tweet$/) do
  @tweet = 'This is a Tweet'
  fill_in 'Text', with: @tweet
end

Then(/^I see my tweet$/) do
  expect(page).to have_content(@tweet)
end
