require 'spec_helper'

describe TutorialLink do
  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(15) }

  # it { should validate_presence_of(:user_id) }
  # it { should allow_value(2).for(:user_id) }
  # it { should_not allow_value("two").for(:user_id) }

  it { should validate_presence_of(:url) }
  it { should validate_uniqueness_of(:url) }
  it { should allow_value("http://google.com").for(:url) }
  it { should allow_value("http://www.google.com").for(:url) }
  it { should allow_value("google.com").for(:url) }
  it { should_not allow_value("website").for(:url) }
  it { should_not allow_value("google[DOT]come").for(:url) }

  
end
