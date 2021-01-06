require 'rails_helper'

RSpec.describe "titles/index", type: :view do
  before(:each) do
    assign(:titles, [
      Title.create!(
        name: "Name",
        type: "",
        director: nil,
        release_year: "",
        rating: "Rating",
        duration_in_minutes: 2,
        duration_seasons: 3,
        description: "Description"
      ),
      Title.create!(
        name: "Name",
        type: "",
        director: nil,
        release_year: "",
        rating: "Rating",
        duration_in_minutes: 2,
        duration_seasons: 3,
        description: "Description"
      )
    ])
  end

  it "renders a list of titles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Rating".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
