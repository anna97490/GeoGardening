require 'json'

List.destroy_all

Plant.destroy_all

User.destroy_all

Location.destroy_all

puts "Starting the seeding"
puts "Creating plants"

filepath = File.expand_path(File.dirname(__FILE__) + '/plants.json')
ser_plants = File.read(filepath)
plants = JSON.parse(ser_plants)

Plant.create_from_collection(plants)
puts "Finished creating plants"

user = User.create(email: 'lewagon@gmail.com', password: 'lewagon', user_location: 'Nice', nickname: 'Fab')

List.create(name: 'Maison de campagne', location: 'Nice', user_id: user.id)

List.create(name: 'Mon appartement', location: 'Paris', user_id: user.id)

# puts "Creating locations"

# filepath = File.expand_path(File.dirname(__FILE__) + '/hardiness_zones.json')
# ser_locations = File.read(filepath)
# locations = JSON.parse(ser_locations)
# Location.create_from_collection(locations)

# puts "Finished creating locations"

puts "Finished seeding"
