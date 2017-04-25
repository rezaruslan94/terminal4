  require 'test_helper'

  class EmployeeTest < ActiveSupport::TestCase
    test "should not save article without name" do
      employee = Employee.new
      assert_not employee.save, "Saved the article without a name"
    end
  end
