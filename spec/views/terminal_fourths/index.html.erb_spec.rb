require 'rails_helper'

RSpec.describe "terminal_fourths/index", type: :view do
  before(:each) do
    assign(:terminal_fourths, [
      TerminalFourth.create!(
        :po => "Po",
        :qty => 2,
        :finish => 3,
        :buyer_id => 4,
        :item_id => 5
      ),
      TerminalFourth.create!(
        :po => "Po",
        :qty => 2,
        :finish => 3,
        :buyer_id => 4,
        :item_id => 5
      )
    ])
  end

  it "renders a list of terminal_fourths" do
    render
    assert_select "tr>td", :text => "Po".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
