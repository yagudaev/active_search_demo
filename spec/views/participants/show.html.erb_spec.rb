require 'rails_helper'

RSpec.describe "participants/show", type: :view do
  before(:each) do
    @participant = assign(:participant, Participant.create!(
      first_name: "First Name",
      last_name: "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end
end
