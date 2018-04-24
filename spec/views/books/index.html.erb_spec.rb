require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    @teach = assign(:teach, Teacher.create!(
      :name => "MyString",
    ))
    assign(:books, [
      Book.create!(
        :title => "Title",
        :readable => @teach
      ),
      Book.create!(
        :title => "Title",
        :readable => @teach
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => @teach.to_s, :count => 2
  end
end
