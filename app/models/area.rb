class Area < ApplicationRecord
  has_many :pics
  belongs_to :employee
  belongs_to :division
end
