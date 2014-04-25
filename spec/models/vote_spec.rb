require 'spec_helper'

describe Vote do
  it { should belong_to :user}
  it { should belong_to :idea}
  it { should validate_uniqueness_of(:idea_id).scoped_to(:user_id) }
end
