require 'rails_helper'

RSpec.describe "titles/edit", type: :view do
  before(:each) do
    @title = assign(:title, Title.create!(
      name: "MyString",
      type: "",
      director: nil,
      release_year: "",
      rating: "MyString",
      duration_in_minutes: 1,
      duration_seasons: 1,
      description: "MyString"
    ))
  end

  it "renders the edit title form" do
    render

    assert_select "form[action=?][method=?]", title_path(@title), "post" do

      assert_select "input[name=?]", "title[name]"

      assert_select "input[name=?]", "title[type]"

      assert_select "input[name=?]", "title[director_id]"

      assert_select "input[name=?]", "title[release_year]"

      assert_select "input[name=?]", "title[rating]"

      assert_select "input[name=?]", "title[duration_in_minutes]"

      assert_select "input[name=?]", "title[duration_seasons]"

      assert_select "input[name=?]", "title[description]"
    end
  end
end
