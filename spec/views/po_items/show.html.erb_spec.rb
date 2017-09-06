require 'rails_helper'

RSpec.describe "po_items/show", type: :view do
  before(:each) do
    @po_item = assign(:po_item, PoItem.create!(
      :qty => 2,
      :po_id => 3,
      :item_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
