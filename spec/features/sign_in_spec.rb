require 'rails_helper'

feature 'User signs in' do
  
  before :each do
    User.create(:email => 'newuser@sb.com', :password => 'password')
  end 

  scenario 'with valid credentials' do
    visit new_user_session_path
    fill_in 'Email', with: 'newuser@sb.com'
    fill_in 'Password', with: 'password' 
    click_on 'Log In'

    expect(page).to have_content('Signed in successfully.')
  end
end