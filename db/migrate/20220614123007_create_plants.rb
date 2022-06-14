class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.string :family
      t.string :image_url
      t.string :type
      t.string :maturity_size
      t.string :sun_exposure
      t.string :soil_type
      t.string :soil_ph
      t.string :bloom_time
      t.string :hardiness_zone
      t.string :native_area
      t.text :care
      t.text :light
      t.text :soil
      t.text :water
      t.text :fertilizing
      t.boolean :pot
      t.boolean :open_soil

      t.timestamps
    end
  end
end
