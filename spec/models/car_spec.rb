require 'spec_helper'

describe Car, "Relationships" do
  it { should belong_to(:user) }
end

describe Car, "Validations" do
  it { should validate_presence_of(:make) }
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:initial_odometer) }
end
