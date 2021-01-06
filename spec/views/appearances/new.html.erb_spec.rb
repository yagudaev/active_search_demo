require 'rails_helper'

RSpec.describe "appearances/new", type: :view do
  before(:each) do
    assign(:appearance, Appearance.new(
      participant: nil,
      title: nil,
      role: 1
    ))
  end

  it "renders new appearance form" do
    render

    assert_select "form[action=?][method=?]", appearances_path, "post" do

      assert_select "input[name=?]", "appearance[participant_id]"

      assert_select "input[name=?]", "appearance[title_id]"

      assert_select "input[name=?]", "appearance[role]"
    end
  end
end
