require 'spec_helper'

describe Tag do
  
  it { should have_many(:tutorials) }
  it { should have_many(:taggings) }

  it { should validate_presence_of(:content) }
  it { should allow_value("ruby").for(:content) }
  it { should_not allow_value("ruby on rails").for(:content) }
end
