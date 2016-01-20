When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end
