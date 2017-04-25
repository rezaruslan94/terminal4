require 'rails_helper'

RSpec.describe Employee, type: :model do
  let(:employee) {Employee.new}
  it "should have proper attribute" do
    expect(employee).to respond_to(:id)
    expect(employee).to respond_to(:name)
  end

  describe "validations" do
    it { expect(employee).to validate_presence_of(:name) }
  end
end
