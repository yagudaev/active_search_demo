require 'rails_helper'

RSpec.describe "appearances/index", type: :view do
  before(:each) do
    assign(:appearances, [
      Appearance.create!(
        participant: nil,
        title: nil,
        role: 2
      ),
      Appearance.create!(
        participant: nil,
        title: nil,
        role: 2
      )
    ])
  end

  it "renders a list of appearances" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
