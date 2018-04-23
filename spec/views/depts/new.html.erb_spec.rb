require 'rails_helper'

RSpec.describe "depts/new", type: :view do
  before(:each) do
    assign(:dept, Dept.new(
      :name => "MyString"
    ))
  end

  it "renders new dept form" do
    render

    assert_select "form[action=?][method=?]", depts_path, "post" do

      assert_select "input[name=?]", "dept[name]"
    end
  end
end
