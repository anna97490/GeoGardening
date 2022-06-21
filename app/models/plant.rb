class Plant < ApplicationRecord
  has_many :lists, through: :plant_lists
  has_many :plant_lists, dependent: :destroy
  has_many :plant_locations
  has_many :locations, through: :plant_locations

  def self.create_from_collection(plants)
    plants.each do |p|
      z = p["hardiness_zone"]
      zone = []
      if !z.include?("-")
        array = []
        array << z.to_i
        zone = array
      else
        chars = z.chars
        array = []
        chars.each do |c|
          if /^[0-9]+$/ === c
            array << c
          end
        end
        if array.size == 1
          zone = array
        else
          if array.include? array[2]
            new_array = []
            new_array << array[0]
            a = array[1] + array[2]
            new_array << a
            range = Range.new(new_array[0], new_array[1]).to_a
          else
            range = Range.new(array[0], array[1]).to_a
          end
          results = range.map do |c|
            c.to_i
          end
          zone = results
        end
      end
      puts zone
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
          temperature_humidity: p["temperature_humidity"],
          zone: zone
        )
      puts plant.name
      plant.save
    end
  end

  # private

  # def transform(string)
  #   if !string.include?("-")
  #     array = []
  #     array << string.to_i
  #   else
  #     chars = string.chars
  #     array = []
  #     chars.each do |c|
  #       if /^[0-9]+$/ === c
  #       array << c
  #       end
  #     end
  #     if array.include? array[2]
  #       new_array = []
  #       new_array << array[0]
  #       a = array[1] + array[2]
  #       new_array << a
  #       range = Range.new(new_array[0], new_array[1]).to_a
  #       results = range.map do |c|
  #       c.to_i
  #         end
  #       results
  #       else
  #         range = Range.new(array[0], array[1]).to_a
  #         results = range.map do |c|
  #           c.to_i
  #           end
  #         results
  #     end
  #   end
  # end
end
