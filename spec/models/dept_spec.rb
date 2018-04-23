require 'rails_helper'

describe Dept,type: :model do
  it { should have_and_belong_to_many(:teachers) }
  it { should have_many(:studs)}
end
