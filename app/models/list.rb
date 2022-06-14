class List < ApplicationRecord
  has_many :plant_lists, dependent: :destroy
  has_many :plants, through: :plant_lists
  belongs_to :user

  validates :name, presence: true
end
