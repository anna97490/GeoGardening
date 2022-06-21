class Location < ApplicationRecord
  has_many :plant_locations
  has_many :plants, through: :plant_locations
  def self.create_from_collection(locations)
    locations.each do |l|
      location = Location.new(
        name: l["name"],
        zone: l["zone"]
      )
      puts location.name
      location.save
    end
  end
end
