class Employe < ApplicationRecord
  has_many :departments
  has_many :divions
end
