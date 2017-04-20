require 'rails_helper'

RSpec.describe "terminal_fourths/show", type: :view do
  before(:each) do
    @terminal_fourth = assign(:terminal_fourth, TerminalFourth.create!(
      :po => "Po",
      :qty => 2,
      :finish => 3,
      :buyer_id => 4,
      :item_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Po/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
