class AddZoneToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :zone, :integer, array: true, default: []
  end
end
