class Employee < ApplicationRecord
  has_many :departments
  has_many :divisions
  has_many :areas
  validates :name, length: { maximum: 30 }
  validates :name, presence: true
end
