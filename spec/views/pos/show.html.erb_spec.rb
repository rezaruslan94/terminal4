require 'rails_helper'

RSpec.describe "pos/show", type: :view do
  before(:each) do
    @po = assign(:po, Po.create!(
      :number => "Number",
      :buyer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/2/)
  end
end
