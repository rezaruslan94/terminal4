require "rails_helper"

RSpec.describe Pic, :type => :model do
  let(:pic) {Pic.new}
  it "should have proper attribute" do
    expect(pic).to respond_to(:id)
    expect(pic).to respond_to(:wh)
    expect(pic).to respond_to(:qty)
    expect(pic).to respond_to(:created_at)
    expect(pic).to respond_to(:updated_at)
    expect(pic).to respond_to(:created_at)
    expect(pic).to respond_to(:part_id)
    expect(pic).to respond_to(:area_id)
  end

  describe "relations" do
    it { should belong_to(:area)}
    it { should belong_to(:part)}
  end
end
