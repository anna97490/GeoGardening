require 'json'

List.destroy_all

Plant.destroy_all

User.destroy_all
Locations.destroy_all

puts "Starting the seeding"
puts "Creating plants"

filepath = File.expand_path(File.dirname(__FILE__) + '/plants.json')
ser_plants = File.read(filepath)
plants = JSON.parse(ser_plants)

Plant.create_from_collection(plants)
puts "Finished creating plants"

user_1 = User.create(email: 'lewagon@gmail.com', password: 'lewagon', user_location: 'Nice', nickname: 'Fab')

List.create(name: 'Liste Nice', location: 'Nice', user_id: user_1.id)

List.create(name: 'Liste Paris', location: 'Paris', user_id: user_1.id)

puts "Creating locations"

filepath = File.expand_path(File.dirname(__FILE__) + '/hardiness_zones.json')
ser_locations = File.read(filepath)
locations = JSON.parse(ser_locations)
Location.create_from_collection(locations)

puts "Finished creating locations"

puts "Finished seeding"
