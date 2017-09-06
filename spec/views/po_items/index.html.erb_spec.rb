require 'rails_helper'

RSpec.describe "po_items/index", type: :view do
  before(:each) do
    assign(:po_items, [
      PoItem.create!(
        :qty => 2,
        :po_id => 3,
        :item_id => 4
      ),
      PoItem.create!(
        :qty => 2,
        :po_id => 3,
        :item_id => 4
      )
    ])
  end

  it "renders a list of po_items" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
