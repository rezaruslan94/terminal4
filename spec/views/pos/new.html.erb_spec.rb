require 'rails_helper'

RSpec.describe "pos/new", type: :view do
  before(:each) do
    assign(:po, Po.new(
      :number => "MyString",
      :buyer_id => 1
    ))
  end

  it "renders new po form" do
    render

    assert_select "form[action=?][method=?]", pos_path, "post" do

      assert_select "input#po_number[name=?]", "po[number]"

      assert_select "input#po_buyer_id[name=?]", "po[buyer_id]"
    end
  end
end
