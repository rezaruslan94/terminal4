class Part < ApplicationRecord
  belongs_to :item
  has_many :pics
  validates :norms, :format => { :with => /\A\d+(?:\.\d{0,3})?\z/ }, :numericality => {:greater_than => 0, :less_than => 10}
end
