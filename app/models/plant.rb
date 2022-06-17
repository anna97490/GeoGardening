class Plant < ApplicationRecord
  has_many :lists, through: :plant_lists
  has_many :plant_lists
  def self_create_from_collection(plants)
    plants.each do |plant_hash|
      Plant.create(plant_hash)
    end
  end
end
