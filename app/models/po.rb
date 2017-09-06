class Po < ApplicationRecord
  belongs_to :buyer
  has_many :po_items, inverse_of: :po
  accepts_nested_attributes_for :po_items, allow_destroy: true

  validates :number, :buyer_id, presence: true, length: { maximum: 30}, if: :can_validate?
  def can_validate?
    true
  end
  validates :buyer_id, :presence => true
end
