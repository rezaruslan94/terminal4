require 'rails_helper'

RSpec.describe "terminal4updates/show", type: :view do
  before(:each) do
    @terminal4update = assign(:terminal4update, Terminal4update.create!(
      :qty => 2,
      :terminal_fourth_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
