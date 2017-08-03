require 'rails_helper'

RSpec.describe "terminal4outs/new", type: :view do
  before(:each) do
    assign(:terminal4out, Terminal4out.new(
      :fix => 1,
      :terminal_fourth_id => 1
    ))
  end

  it "renders new terminal4out form" do
    render

    assert_select "form[action=?][method=?]", terminal4outs_path, "post" do

      assert_select "input#terminal4out_fix[name=?]", "terminal4out[fix]"

      assert_select "input#terminal4out_terminal_fourth_id[name=?]", "terminal4out[terminal_fourth_id]"
    end
  end
end
