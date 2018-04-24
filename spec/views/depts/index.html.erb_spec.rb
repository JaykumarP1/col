require 'rails_helper'

RSpec.describe "depts/index", type: :view do
  before(:each) do
    assign(:depts, [
      Dept.create!(
        :name => "Name"
      ),
      Dept.create!(
        :name => "Name"
      )
    ])
  end

  # it "renders a list of depts" do
  #   render
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  # end
end
