require 'rails_helper'

RSpec.describe "studs/edit", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :name => "MyString",
    ))
    @stud = assign(:stud, Stud.create!(
      :name => "MyString",
      dept_id: 1
    ))
  end

  it "renders the edit stud form" do
    render

    assert_select "form[action=?][method=?]", stud_path(@stud), "post" do

      assert_select "input[name=?]", "stud[name]"
    end
  end
end
