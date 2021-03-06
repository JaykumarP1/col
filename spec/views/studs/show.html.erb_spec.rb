require 'rails_helper'

RSpec.describe "studs/show", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :name => "MyString",
    ))
    @stud = assign(:stud, Stud.create!(
      :name => "Name",
      dept_id: 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
