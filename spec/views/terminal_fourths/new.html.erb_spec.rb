require 'rails_helper'

RSpec.describe "terminal_fourths/new", type: :view do
  before(:each) do
    assign(:terminal_fourth, TerminalFourth.new(
      :po => "MyString",
      :qty => 1,
      :finish => 1,
      :buyer_id => 1,
      :item_id => 1
    ))
  end

  it "renders new terminal_fourth form" do
    render

    assert_select "form[action=?][method=?]", terminal_fourths_path, "post" do

      assert_select "input#terminal_fourth_po[name=?]", "terminal_fourth[po]"

      assert_select "input#terminal_fourth_qty[name=?]", "terminal_fourth[qty]"

      assert_select "input#terminal_fourth_finish[name=?]", "terminal_fourth[finish]"

      assert_select "input#terminal_fourth_buyer_id[name=?]", "terminal_fourth[buyer_id]"

      assert_select "input#terminal_fourth_item_id[name=?]", "terminal_fourth[item_id]"
    end
  end
end
