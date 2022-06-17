class Plant < ApplicationRecord
  has_many :lists, through: :plant_lists
  has_many :plant_lists

  def self.create_from_collection(plants)
    # plants.each do |plant_hash|
    #   Plant.create(plant_hash)
    plants.each do |p|
      plant = Plant.new(
          name: p["name"],
          scientific_name: p["scientific_name"],
          family: p["family"],
          image_url: p["image_url"],
          plant_type: p["type"],
          maturity_size: p["maturity_size"],
          sun_exposure: p["sun_exposure"],
          water: p["water"],
          soil_ph: p["soil_ph"],
          hardiness_zone: p["hardiness_zone"],
          description: p["description"],
          temperature_humidity: p["temperature_humidity"]
        )
      puts plant.name
      plant.save
    end
  end
end
