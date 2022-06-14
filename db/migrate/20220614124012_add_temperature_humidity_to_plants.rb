class AddTemperatureHumidityToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :temperature_humidity, :text
  end
end
