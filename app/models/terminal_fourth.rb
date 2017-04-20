class TerminalFourth < ApplicationRecord
  belongs_to :buyer
  belongs_to :item
  attr_accessor :product_finish
  validates :po, :qty, :terminal_inspect, :terminal_stuffing, :buyer_id, :item_id, presence: true
  validates :qty, :numericality => {:greater_than => 0, :less_than => 9999999}


  before_update do
    self.finish = finish.to_f + product_finish.to_f
  end

  before_create do
    self.finish = 0
  end
end
