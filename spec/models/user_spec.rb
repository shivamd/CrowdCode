require 'spec_helper'

describe User do
  
  it { should have_many(:tutorial_links) }
  it { should have_many(:tutorials) }
end
