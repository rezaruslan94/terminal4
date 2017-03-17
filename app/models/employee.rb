class Employee < ApplicationRecord
  has_many :departments
  has_many :divisions
  has_many :areas
  validates :name, length: { maximum: 30 }

  def show_employee
    self.employee.all.each do |employee|
      Employee.where(datepicture: (:dp1)..(:dp2))
    end
  end
end
