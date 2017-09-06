require 'rails_helper'

RSpec.describe "pos/edit", type: :view do
  before(:each) do
    @po = assign(:po, Po.create!(
      :number => "MyString",
      :buyer_id => 1
    ))
  end

  it "renders the edit po form" do
    render

    assert_select "form[action=?][method=?]", po_path(@po), "post" do

      assert_select "input#po_number[name=?]", "po[number]"

      assert_select "input#po_buyer_id[name=?]", "po[buyer_id]"
    end
  end
end
