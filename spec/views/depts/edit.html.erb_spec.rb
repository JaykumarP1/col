require 'rails_helper'

RSpec.describe "depts/edit", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit dept form" do
    render

    assert_select "form[action=?][method=?]", dept_path(@dept), "post" do

      assert_select "input[name=?]", "dept[name]"
    end
  end
end
