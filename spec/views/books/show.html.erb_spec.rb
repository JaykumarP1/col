require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
     @teach = assign(:teach, Teacher.create!(
      :name => "MyString",
    ))
    @book = assign(:book, Book.create!(
      :title => "Title",
      :readable => @teach
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
