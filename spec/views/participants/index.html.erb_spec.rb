require 'rails_helper'

RSpec.describe "participants/index", type: :view do
  before(:each) do
    assign(:participants, [
      Participant.create!(
        first_name: "First Name",
        last_name: "Last Name"
      ),
      Participant.create!(
        first_name: "First Name",
        last_name: "Last Name"
      )
    ])
  end

  it "renders a list of participants" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
  end
end
