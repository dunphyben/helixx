require 'spec_helper'
describe Videovote do
it { should belong_to :user}
it { should belong_to :video}
end
