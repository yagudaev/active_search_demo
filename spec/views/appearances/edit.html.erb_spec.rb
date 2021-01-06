require 'rails_helper'

RSpec.describe "appearances/edit", type: :view do
  before(:each) do
    @appearance = assign(:appearance, Appearance.create!(
      participant: nil,
      title: nil,
      role: 1
    ))
  end

  it "renders the edit appearance form" do
    render

    assert_select "form[action=?][method=?]", appearance_path(@appearance), "post" do

      assert_select "input[name=?]", "appearance[participant_id]"

      assert_select "input[name=?]", "appearance[title_id]"

      assert_select "input[name=?]", "appearance[role]"
    end
  end
end
