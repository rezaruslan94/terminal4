require 'rails_helper'

RSpec.describe "po_updates/index", type: :view do
  before(:each) do
    assign(:po_updates, [
      PoUpdate.create!(
        :qty_finish => 2,
        :po_item_id => 3
      ),
      PoUpdate.create!(
        :qty_finish => 2,
        :po_item_id => 3
      )
    ])
  end

  it "renders a list of po_updates" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
