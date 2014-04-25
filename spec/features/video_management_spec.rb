require 'spec_helper'

feature 'videos' do

  scenario 'a user clicks on a idea link to display videos' do
    idea = FactoryGirl.create(:idea)
    idea2 = FactoryGirl.create(:idea)
    idea.videos << FactoryGirl.create(:video)
    idea2.videos << FactoryGirl.create(:video)
    visit ideas_path
    # click_link "#{idea2.title}"
    page.should have_content "Parent Idea idea_id : #{idea2.id}"
  end


end
