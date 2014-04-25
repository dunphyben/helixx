require 'spec_helper'

describe User do

  it { should have_and_belong_to_many :ideas }
  it { should have_many :videos }
  it { should have_many :votes}
  it { should have_many :videovotes}

end
