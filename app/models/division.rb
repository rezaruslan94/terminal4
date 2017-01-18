class Division < ApplicationRecord
  belongs_to :employe
  belongs_to :department
  has_many :areas
  has_many :a, class_name: "DivisionField"

  
  accepts_nested_attributes_for :a, allow_destroy: true
end
