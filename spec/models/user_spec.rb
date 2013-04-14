require 'spec_helper'

describe User do
  it { should have_many(:tutorials) }
  it { should have_many(:votes)}
end
