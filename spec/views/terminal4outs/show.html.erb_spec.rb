require 'rails_helper'

RSpec.describe "terminal4outs/show", type: :view do
  before(:each) do
    @terminal4out = assign(:terminal4out, Terminal4out.create!(
      :fix => 2,
      :terminal_fourth_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
