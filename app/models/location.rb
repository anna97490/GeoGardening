class Location < ApplicationRecord
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
