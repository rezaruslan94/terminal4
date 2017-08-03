require 'rails_helper'

RSpec.describe "terminal4outs/edit", type: :view do
  before(:each) do
    @terminal4out = assign(:terminal4out, Terminal4out.create!(
      :fix => 1,
      :terminal_fourth_id => 1
    ))
  end

  it "renders the edit terminal4out form" do
    render

    assert_select "form[action=?][method=?]", terminal4out_path(@terminal4out), "post" do

      assert_select "input#terminal4out_fix[name=?]", "terminal4out[fix]"

      assert_select "input#terminal4out_terminal_fourth_id[name=?]", "terminal4out[terminal_fourth_id]"
    end
  end
end
