class Department < ApplicationRecord
  belongs_to :employe
  has_many :divisions
end
