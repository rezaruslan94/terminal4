class Division < ApplicationRecord
  belongs_to :employe
  belongs_to :department
  has_many :areas, inverse_of: :division
  validates_uniqueness_of :number

  accepts_nested_attributes_for :areas, allow_destroy: true
end
