require 'rails_helper'

RSpec.describe "depts/show", type: :view do
  before(:each) do
    @dept = assign(:dept, Dept.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
