require 'rails_helper'

RSpec.describe "pos/index", type: :view do
  before(:each) do
    assign(:pos, [
      Po.create!(
        :number => "Number",
        :buyer_id => 2
      ),
      Po.create!(
        :number => "Number",
        :buyer_id => 2
      )
    ])
  end

  it "renders a list of pos" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
