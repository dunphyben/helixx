require 'spec_helper'

feature 'user accounts' do

  scenario 'a user signs up for the website' do
    user = FactoryGirl.build(:user)
    visit "users/sign_up"
    fill_in :user_email, with: user.email
    fill_in :user_username, with: user.username
    fill_in :user_password, with: user.password
    fill_in :user_password_confirmation, with: user.password
    click_button "Sign up"
    page.should have_content "Edit profile | Logout"
  end

  scenario 'a user signs in' do
    user = FactoryGirl.create(:user)
    visit "users/sign_in"
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    click_button "Sign in"
    page.should have_content "Edit profile | Logout"
  end

end
