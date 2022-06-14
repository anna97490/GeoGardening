class CreatePlantLists < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_lists do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
