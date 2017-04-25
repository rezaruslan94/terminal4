require 'rails_helper'

RSpec.describe TerminalFourth, type: :model do
  let(:terminal_fourth) {TerminalFourth.new}
  it "should have proper attribute" do
    expect(terminal_fourth).to respond_to(:id)
    expect(terminal_fourth).to respond_to(:po)
    expect(terminal_fourth).to respond_to(:qty)
    expect(terminal_fourth).to respond_to(:finish)
    expect(terminal_fourth).to respond_to(:terminal_inspect)
    expect(terminal_fourth).to respond_to(:terminal_stuffing)
    expect(terminal_fourth).to respond_to(:buyer_id)
    expect(terminal_fourth).to respond_to(:item_id)
  end

  describe "validations" do
    it { expect(terminal_fourth).to validate_presence_of(:po) }
    it { expect(terminal_fourth).to validate_numericality_of(:qty) }
    it { expect(terminal_fourth).to validate_numericality_of(:finish) }
  end

  describe "relations" do
    it { expect(terminal_fourth).to belong_to(:buyer) }
    it { expect(terminal_fourth).to belong_to(:item) }
  end
end
