class Buyer < ApplicationRecord
  has_many :terminal_fourths, inverse_of: :buyer
  accepts_nested_attributes_for :terminal_fourths, allow_destroy: true
end
