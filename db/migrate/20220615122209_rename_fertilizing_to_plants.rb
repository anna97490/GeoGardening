class RenameFertilizingToPlants < ActiveRecord::Migration[6.1]
  def change
    rename_column :plants, :fertilizing, :fertilizer
  end
end
