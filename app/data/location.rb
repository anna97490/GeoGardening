require 'json'

def find_location
  location_hashes = []
  filepath = File.expand_path(File.dirname(__FILE__) + '/communes.json')
  ser_communes = File.read(filepath)
  communes = JSON.parse(ser_communes)
  # puts "Je suis dans le premier JSON"
  communes.each do |c|
    if c['COM'].instance_of?(String) && c['COM'].start_with?("0")
      code = c['COM'].slice!(0)
    else
      code = c['COM']
    end
    name = c['NCC']
    filepath = File.expand_path(File.dirname(__FILE__) + '/climate.json')
    ser_zones = File.read(filepath)
    zones = JSON.parse(ser_zones)
    puts "Je suis dans le 2eme JSON"
    zones.each do |z|
      code_z = z['DC']
      zone = z['TYPO_CLIM']
      if code == code_z
        puts "Je suis dans zone iteration"
        if zone == 8
          climate_zone = (1..10).to_a
          puts "Je suis dans les zones 8"
        elsif (4..7).include? zone
          climate_zone = (1..9).to_a
          puts "Je suis dans les zones 4 à 7"
        elsif (2..3).include? zone
          climate_zone = (1..8).to_a
          puts "Je suis dans les zones 2 à 3"
        elsif zone == 1
          puts "Je suis dans la zone 1"
          climate_zone = (1..7).to_a
        end
        puts "Je suis juste avant element creation "
        element = {
          name: name,
          zone: climate_zone
        }
        p element
        if !element.values.compact.empty?
        location_hashes << element
        end
      end
    end
  end

  filepath = File.expand_path(File.dirname(__FILE__) + '/climate_complete.json')
  File.open(filepath, "wb") do |file|
    file.write(JSON.generate(location_hashes))
  end
end
find_location
puts "Finished creating location hashes"
