require 'rails_helper'

RSpec.describe Stud, type: :model do
  it { should belong_to(:dept)}
end
