class CreatePlantLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_locations do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
