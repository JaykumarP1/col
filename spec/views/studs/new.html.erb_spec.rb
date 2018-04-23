require 'rails_helper'

RSpec.describe "studs/new", type: :view do
  before(:each) do
    assign(:stud, Stud.new(
      :name => "MyString"
    ))
  end

  it "renders new stud form" do
    render

    assert_select "form[action=?][method=?]", studs_path, "post" do

      assert_select "input[name=?]", "stud[name]"
    end
  end
end
