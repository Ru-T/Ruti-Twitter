require 'rails_helper'

feature 'User signs in' do
  scenario 'with valid credentials' do
    visit new_user_session_path
    fill_in 'Email', with: 'ruti@sb.com'
    fill_in 'Password', with: 'password' 
    click_on 'Log In'

    expect(page).to have_content('Signed in successfully.')
  end
end