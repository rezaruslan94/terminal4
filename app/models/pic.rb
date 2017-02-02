class Pic < ApplicationRecord
  belongs_to :area
  belongs_to :part

  def sum_wh
      Pic.sum(:wh)
  end
end
