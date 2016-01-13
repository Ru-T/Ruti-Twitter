require 'rails_helper'

feature 'User signs out' do

  before :each do
    User.create(:email => 'newuser2@sb.com', :password => 'password')
  end 

  scenario 'sign out' do
    visit new_user_session_path
    fill_in 'Email', with: 'newuser2@sb.com'
    fill_in 'Password', with: 'password' 
    click_on 'Log In'
    click_on 'Log Out'

    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end
end
