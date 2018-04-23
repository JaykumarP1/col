require 'rails_helper'

RSpec.describe "studs/index", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :name => "MyString",
    ))

    assign(:studs, [
      Stud.create!(
        :name => "Name",
        dept_id: 1
      ),
      Stud.create!(
        :name => "Name",
        dept_id: 1
      )
    ])
  end

  it "renders a list of studs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
