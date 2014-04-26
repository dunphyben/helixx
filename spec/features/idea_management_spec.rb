require 'spec_helper'

feature 'creating new ideas' do

  scenario 'a signed in user can create an idea' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    idea = FactoryGirl.build(:idea)
    visit new_idea_path
    fill_in :idea_title, with: idea.title
    fill_in :idea_summary, with: idea.summary
    fill_in :idea_content, with: idea.content
    click_button "Create idea"
    page.should have_content "#{idea.title}"
  end
end
