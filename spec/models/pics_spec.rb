require "rails_helper"

RSpec.describe Pic, :type => :model do
  let(:pic) {Pic.new}
  it "should have proper attribute" do
    expect(pic).to respond_to(:id)
    expect(pic).to respond_to(:wh)
    expect(pic).to respond_to(:qty)
    expect(pic).to respond_to(:created_at)
    expect(pic).to respond_to(:updated_at)
    expect(pic).to respond_to(:part_id)
    expect(pic).to respond_to(:area_id)
  end
  describe "validations" do
    it { expect(pic).to validate_presence_of(:wh) }
    it { expect(pic).to validate_presence_of(:qty) }
    it { expect(pic).to validate_presence_of(:part_id) }
    it { expect(pic).to validate_presence_of(:area_id) }
    it { expect(pic).to validate_numericality_of(:wh) }
    it { expect(pic).to validate_numericality_of(:qty) }
  end
  describe "relations" do
    it { expect(pic).to belong_to(:area) }
    it { expect(pic).to belong_to(:part) }
  end
end
