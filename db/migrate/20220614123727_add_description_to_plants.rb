class AddDescriptionToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :description, :text
  end
end
