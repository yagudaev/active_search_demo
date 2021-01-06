require 'rails_helper'

RSpec.describe "titles/show", type: :view do
  before(:each) do
    @title = assign(:title, Title.create!(
      name: "Name",
      type: "",
      director: nil,
      release_year: "",
      rating: "Rating",
      duration_in_minutes: 2,
      duration_seasons: 3,
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Description/)
  end
end
