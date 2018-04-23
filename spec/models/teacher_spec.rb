require 'rails_helper'

describe Teacher,type: :model do
it 'should create a record' do
    expect(Teacher.create(name: 'ram').name).to eq('ram')
  end

  it { should have_and_belong_to_many(:depts) }
end
