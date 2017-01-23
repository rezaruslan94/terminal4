class Department < ApplicationRecord
  belongs_to :employee, optional: true
  has_many :divisions, inverse_of: :department
  accepts_nested_attributes_for :divisions, allow_destroy: true
end
