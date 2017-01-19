class Employee < ApplicationRecord
  has_many :departments
  has_many :divisions
  has_many :areas
end
