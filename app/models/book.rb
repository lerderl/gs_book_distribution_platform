class Book < ApplicationRecord
  validates :region, presence: true
  validates :price, presence: true
  validates :qty_allotted, presence: true
  validates :amt_allotted, presence: true
  validates :qty_bal, presence: true
  validates :amt_bal, presence: true
end
