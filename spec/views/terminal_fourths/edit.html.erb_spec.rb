require 'rails_helper'

RSpec.describe "terminal_fourths/edit", type: :view do
  before(:each) do
    @terminal_fourth = assign(:terminal_fourth, TerminalFourth.create!(
      :po => "MyString",
      :qty => 1,
      :finish => 1,
      :buyer_id => 1,
      :item_id => 1
    ))
  end

  it "renders the edit terminal_fourth form" do
    render

    assert_select "form[action=?][method=?]", terminal_fourth_path(@terminal_fourth), "post" do

      assert_select "input#terminal_fourth_po[name=?]", "terminal_fourth[po]"

      assert_select "input#terminal_fourth_qty[name=?]", "terminal_fourth[qty]"

      assert_select "input#terminal_fourth_finish[name=?]", "terminal_fourth[finish]"

      assert_select "input#terminal_fourth_buyer_id[name=?]", "terminal_fourth[buyer_id]"

      assert_select "input#terminal_fourth_item_id[name=?]", "terminal_fourth[item_id]"
    end
  end
end
