require 'rails_helper'

RSpec.describe "appearances/show", type: :view do
  before(:each) do
    @appearance = assign(:appearance, Appearance.create!(
      participant: nil,
      title: nil,
      role: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
