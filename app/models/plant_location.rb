class PlantLocation < ApplicationRecord
  belongs_to :plant
  belongs_to :location
end
