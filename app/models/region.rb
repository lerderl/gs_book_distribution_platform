class Region < ApplicationRecord
  validates :region, presence: true
  has_many :group_regions
  has_many :regions, through: :group_regions
end
