require 'rails_helper'

RSpec.describe "po_updates/show", type: :view do
  before(:each) do
    @po_update = assign(:po_update, PoUpdate.create!(
      :qty_finish => 2,
      :po_item_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
