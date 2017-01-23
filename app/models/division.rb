class Division < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :department
  has_many :areas, inverse_of: :division
  accepts_nested_attributes_for :areas, allow_destroy: true
end
