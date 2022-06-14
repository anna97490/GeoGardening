class Plant < ApplicationRecord
  has_many :lists, through: :plant_lists
  has_many :plant_lists
end
