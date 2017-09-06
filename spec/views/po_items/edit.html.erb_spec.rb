require 'rails_helper'

RSpec.describe "po_items/edit", type: :view do
  before(:each) do
    @po_item = assign(:po_item, PoItem.create!(
      :qty => 1,
      :po_id => 1,
      :item_id => 1
    ))
  end

  it "renders the edit po_item form" do
    render

    assert_select "form[action=?][method=?]", po_item_path(@po_item), "post" do

      assert_select "input#po_item_qty[name=?]", "po_item[qty]"

      assert_select "input#po_item_po_id[name=?]", "po_item[po_id]"

      assert_select "input#po_item_item_id[name=?]", "po_item[item_id]"
    end
  end
end
