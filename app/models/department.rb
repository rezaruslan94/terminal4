class Department < ApplicationRecord
  belongs_to :employee
  has_many :divisions
end
