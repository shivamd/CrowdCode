require 'spec_helper'

describe Vote do
  it { should validate_presence_of(:votable_id) }
  it { should validate_presence_of(:votable_type) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:score) }
  it { should allow_value(1).for(:score) }
  it { should allow_value(-1).for(:score) }

  it { should_not allow_value(0).for(:score) }
  
  it { should belong_to(:votable)}
  it { should belong_to(:user)}

  ["Tutorial"].each do |tut|
    it { should allow_value(tut).for(:votable_type) }
  end

  it { should_not allow_value("random").for(:votable_type) }
end
