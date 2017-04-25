class TerminalFourth < ApplicationRecord
  belongs_to :buyer
  belongs_to :item
  attr_accessor :product_finish
  validates :po, :qty, :terminal_inspect, :terminal_stuffing, :buyer_id, :item_id, presence: true
  validates :qty, :finish, :numericality => {:greater_than => 0, :less_than => 9999999}


  before_update do
    self.finish = finish.to_f + product_finish.to_f
  end

  def set_finish
    total_minus = 0
    total_minus = qty.to_f - finish.to_f
    return total_minus
  end



  before_create do
    self.finish = 0
  end
end
