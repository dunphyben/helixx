require 'spec_helper'

describe Idea do

  describe 'slugged' do
    it 'should add dashes between the title' do
      slugged = FriendlyId.create(:title => :slug)
      test_title = Idea.create({:title => 'Apples to Apples', :content => "#{'m'*143}", :summary => "#{'m'*13}", :published => false})
      test_title.title.should eq "apples-to-apples"
    end
  end
end
