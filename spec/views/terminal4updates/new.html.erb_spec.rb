require 'rails_helper'

RSpec.describe "terminal4updates/new", type: :view do
  before(:each) do
    assign(:terminal4update, Terminal4update.new(
      :qty => 1,
      :terminal_fourth_id => 1
    ))
  end

  it "renders new terminal4update form" do
    render

    assert_select "form[action=?][method=?]", terminal4updates_path, "post" do

      assert_select "input#terminal4update_qty[name=?]", "terminal4update[qty]"

      assert_select "input#terminal4update_terminal_fourth_id[name=?]", "terminal4update[terminal_fourth_id]"
    end
  end
end
