require 'spec_helper'

describe Video do

  it { should belong_to :user }
  it { should belong_to :idea }
  it { should have_many :videovotes }
  it { should validate_presence_of :user_id }

  describe 'url_scrub' do
    it 'should write the video url in a format for embedding' do
      test_user = User.create(username: "bennyd",
                              email: "bdun@epicodus.com",
                              encrypted_password: "password",
                              id: 5 )
      test_video = Video.create(title: "Maureen's Base Jumping Adventure!",
                                video_url: "http://www.youtube.com/watch?v=iD4qsWnjsNU",
                                user_id: 5,
                                idea_id: 8 )
      test_video.video_url.should eq "http://www.youtube.com/embed/iD4qsWnjsNU"
      test_video.user_id.should eq 5
    end
  end

  describe 'idea_id validation' do
    it 'should validate the presence of the correct idea_id' do
      test_user = User.create(username: "bennyd",
                              email: "bdun@epicodus.com",
                              encrypted_password: "password",
                              id: 5 )
      test_idea = Idea.create(title: "This is an awesome idea",
                              summary: "This is the summary of my test idea",
                              content: "This is the content of my idea. It has lots of words and lots of suggestions. Maybe one day I will actually read it.",
                              user_id: 9,
                              id: 8 )
      test_video = Video.create(title: "Maureen's Base Jumping Adventure!",
                                video_url: "http://www.youtube.com/embed/iD4qsWnjsNU",
                                user_id: 5,
                                idea_id: 8 )
      test_video.idea_id.should eq 8
    end
  end
end
