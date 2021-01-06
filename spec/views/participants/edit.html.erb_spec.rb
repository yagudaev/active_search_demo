require 'rails_helper'

RSpec.describe "participants/edit", type: :view do
  before(:each) do
    @participant = assign(:participant, Participant.create!(
      first_name: "MyString",
      last_name: "MyString"
    ))
  end

  it "renders the edit participant form" do
    render

    assert_select "form[action=?][method=?]", participant_path(@participant), "post" do

      assert_select "input[name=?]", "participant[first_name]"

      assert_select "input[name=?]", "participant[last_name]"
    end
  end
end
