require 'spec_helper'

describe Video do

  it { should belong_to :user }
  it { should belong_to :idea }

end
