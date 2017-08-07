class TerminalFourth < ApplicationRecord
  belongs_to :buyer
  has_many :terminal4updates
  has_many :terminal4outs, inverse_of: :terminal_fourth
  accepts_nested_attributes_for :terminal4outs, allow_destroy: true
  # belongs_to :item
  attr_accessor :product_finish
  validates :po, :qty, :terminal_inspect, :terminal_stuffing, :buyer_id, :item_name, presence: true
  validates :qty, :numericality => {:greater_than => 0, :less_than => 9999999}


  before_update do
    self.finish = finish.to_f + product_finish.to_f
  end

  def set_minus
    Terminal4update.joins(:terminal_fourth).select('terminal_fourth_id, sum(qty_finish) as finish, qty').group(:terminal_fourth_id)
  end



  before_create do
    self.finish = 0
  end
end
