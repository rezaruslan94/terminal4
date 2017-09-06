class Buyer < ApplicationRecord
  has_many  :pos
  has_many :terminal_fourths, inverse_of: :buyer
  accepts_nested_attributes_for :terminal_fourths, allow_destroy: true

  validates :name, presence: true, length: { maximum: 30 }, if: :can_validate?

  def can_validate?
    true
  end
end
