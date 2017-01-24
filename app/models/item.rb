class Item < ApplicationRecord
  has_many :parts, inverse_of: :item
  accepts_nested_attributes_for :parts, allow_destroy: true
end
