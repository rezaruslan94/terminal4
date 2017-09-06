require 'rails_helper'

RSpec.describe "po_updates/new", type: :view do
  before(:each) do
    assign(:po_update, PoUpdate.new(
      :qty_finish => 1,
      :po_item_id => 1
    ))
  end

  it "renders new po_update form" do
    render

    assert_select "form[action=?][method=?]", po_updates_path, "post" do

      assert_select "input#po_update_qty_finish[name=?]", "po_update[qty_finish]"

      assert_select "input#po_update_po_item_id[name=?]", "po_update[po_item_id]"
    end
  end
end
