require 'spec_helper'

describe Video do

  it { should belong_to :user }
  it { should belong_to :idea }

  describe 'url_scrub' do
    it 'should write the video url in a format for embedding' do
      test_video = Video.create(title: "Maureen's Base Jumping Adventure!",
                                video_url: "http://www.youtube.com/watch?v=iD4qsWnjsNU",
                                user_id: 5,
                                idea_id: 8 )
      test_video.video_url.should eq "http://www.youtube.com/embed/iD4qsWnjsNU"
    end
  end
end
