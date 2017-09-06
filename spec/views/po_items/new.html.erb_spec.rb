require 'rails_helper'

RSpec.describe "po_items/new", type: :view do
  before(:each) do
    assign(:po_item, PoItem.new(
      :qty => 1,
      :po_id => 1,
      :item_id => 1
    ))
  end

  it "renders new po_item form" do
    render

    assert_select "form[action=?][method=?]", po_items_path, "post" do

      assert_select "input#po_item_qty[name=?]", "po_item[qty]"

      assert_select "input#po_item_po_id[name=?]", "po_item[po_id]"

      assert_select "input#po_item_item_id[name=?]", "po_item[item_id]"
    end
  end
end
