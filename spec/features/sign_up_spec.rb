require 'rails_helper'

feature 'User signs up' do
  scenario 'new user creating account' do
    visit new_user_registration_path
    fill_in 'Email', with: 'newuser@test.com'
    fill_in 'Password', with: 'password' 
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end