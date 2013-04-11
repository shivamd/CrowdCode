require 'spec_helper'

describe Tutorial do
  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(15) }

  it { should validate_presence_of(:content) }
  it { should ensure_length_of(:content).is_at_least(100) }

  it { should validate_presence_of(:user_id) }
  it { should allow_value(2).for(:user_id) }
  it { should_not allow_value("two").for(:user_id) }

  it { should belong_to(:user) }
end
