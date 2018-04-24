require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
     @teach = assign(:teach, Teacher.create!(
      :name => "MyString",
    ))
    assign(:book, Book.new(
      :title => "MyString",
      :readable => @teach
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[readable_id]"
    end
  end
end
