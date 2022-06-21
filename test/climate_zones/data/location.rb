require 'csv'
require 'json'

  def get_location
    location_hashes = []
    filepath = File.expand_path(File.dirname(__FILE__) + '/communes.json')
    ser_communes = File.read(filepath)
    communes = JSON.parse(ser_communes)
    # p communes['COM']
    communes.each do |c|
      code =  c['COM']
      name = c['NCC']
      filepath = File.expand_path(File.dirname(__FILE__) + '/climate.json')
      ser_zones = File.read(filepath)
      zones = JSON.parse(ser_zones)
      zones.each do |z|
        code_z = z['DC']
        zone = z['TYPO_CLIM']
        if code == code_z && !zone == nil
          if zone == 8
            climate_zone = (1..10).to_a
          elsif zone == 4 || zone == 5 || zone == 6 || zone == 7
            climate_zone = (1..9).to_a
          elsif zone == 3 || zone == 2
            climat_zone = (1..8).to_a
          elsif zone == 1
            climat_zone =  (1..7).to_a
          end
          element = {
            name: name,
            zone: climate_zone
          }
            # if !element.values.compact.empty?
            p element
            location_hashes << element
            end
        end

      end
    end
    filepath = File.expand_path(File.dirname(__FILE__) + '/climate_z.json')
    File.open(filepath, "wb") do |file|
    file.write(JSON.generate(location_hashes))
    end
  end
  get_location()
  puts "Finished creating location hashes"




# LOCATION_HASHES = []
# def get_location()

  # filepath = File.expand_path(File.dirname(__FILE__) + '/communes.csv')
  # CSV.foreach(filepath, headers: :ncc) do |row|
  #   name =  row['NCC']
  #   code = row['COM']
  #   # puts "#{row['COM']}"
  #   filepath = File.expand_path(File.dirname(__FILE__) + '/climat.csv')
  #   CSV.foreach(filepath, headers: true) do |row|
  #     code_insee ="0" + row.field(0)[0]+row.field(0)[1] + row.field(0)[2] + row.field(0)[3]
  #     # puts codes_insee
  #     climat_zone = row.field(0)[6]
  #     # puts climat_zones
  #     if code_insee == code
  #       element = {name => climat_zone}
  #       if !element.values.compact.empty?
  #         p element
  #       LOCATION_HASHES<< element
  #       end
  #     end
  #   end

  # end

# end
# p LOCATION_HASHES


# def get_code()

#   col_climat = []
#   filepath = File.expand_path(File.dirname(__FILE__) + '/climat.csv')
#   CSV.foreach(filepath, headers: true) do |row|
#     codes_insee ="0" + row.field(0)[0]+row.field(0)[1] + row.field(0)[2] + row.field(0)[3]
#     puts codes_insee
#     # climat_zones = row.field(0)[6]
#     # puts "#{row['TYPO_CLIM']}"
#   end
# end
# get_code()
# get_location()
