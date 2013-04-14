require 'spec_helper'

describe Tagging do
  it { should belong_to(:taggable) }
  it { should belong_to(:tag) }

  it { should validate_presence_of(:taggable_type) }
  ["Tutorial"].each do |tut|
    it { should allow_value(tut).for(:taggable_type)}
  end
  it { should_not allow_value("random").for(:taggable_type) }

  it { should validate_presence_of(:tag_id) }
  it { should_not allow_value("two").for(:tag_id)}
  it { should allow_value(2).for(:tag_id) }
  
  it { should validate_presence_of(:taggable_id) }
  it { should allow_value(2).for(:taggable_id) }
  it { should_not allow_value("two").for(:taggable_id)}
end
