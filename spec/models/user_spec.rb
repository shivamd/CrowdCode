require 'spec_helper'

describe User do
  it { should have_many(:tutorials) }
  it { should have_many(:votes)}
  it { should have_many(:bookmarks) }
  it { should validate_uniqueness_of(:username)}
end
