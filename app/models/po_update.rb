class PoUpdate < ApplicationRecord
  belongs_to :po_item

  validates :qty_finish, :po_item_id, presence: true, length: { maximum: 30}, if: :can_validate?
  def can_validate?
    true
  end

  validates :po_item_id, :presence => true

end
