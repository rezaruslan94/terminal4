require 'rails_helper'

RSpec.describe "terminal4updates/edit", type: :view do
  before(:each) do
    @terminal4update = assign(:terminal4update, Terminal4update.create!(
      :qty => 1,
      :terminal_fourth_id => 1
    ))
  end

  it "renders the edit terminal4update form" do
    render

    assert_select "form[action=?][method=?]", terminal4update_path(@terminal4update), "post" do

      assert_select "input#terminal4update_qty[name=?]", "terminal4update[qty]"

      assert_select "input#terminal4update_terminal_fourth_id[name=?]", "terminal4update[terminal_fourth_id]"
    end
  end
end
