require 'rails_helper'

RSpec.describe "terminal4updates/index", type: :view do
  before(:each) do
    assign(:terminal4updates, [
      Terminal4update.create!(
        :qty => 2,
        :terminal_fourth_id => 3
      ),
      Terminal4update.create!(
        :qty => 2,
        :terminal_fourth_id => 3
      )
    ])
  end

  it "renders a list of terminal4updates" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
