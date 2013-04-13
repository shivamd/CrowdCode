require 'spec_helper'

describe Comment do
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:commentable_id) }
  it { should validate_presence_of(:commentable_type) }

  it { should belong_to(:commentable) }
  it { should belong_to(:user) }
end
