require 'spec_helper'

describe Bookmark do
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:tutorial_id) }

  it { should allow_value(2).for(:user_id) }
  it { should_not allow_value("two").for(:user_id) }

  it { should allow_value(2).for(:tutorial_id) }
  it { should_not allow_value("two").for(:tutorial_id) }

  it { should belong_to(:user) }
  it { should belong_to(:tutorial) }
end
