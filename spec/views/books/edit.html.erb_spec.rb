require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @teach = assign(:teach, Teacher.create!(
      :name => "MyString",
    ))
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :readable => @teach
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[readable_id]"
    end
  end
end
