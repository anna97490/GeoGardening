require 'json'

filepath = File.expand_path(File.dirname(__FILE__) + '/plants.json')
ser_plants = File.read(filepath)
plants = JSON.parse(ser_plants)
plants.each do |p|
  puts p["hardiness_zone"]
  z = p["hardiness_zone"]
  if !z.include?("-")
    array = []
    array << z.to_i
    zone = array
  else
    chars = z.chars
    array = []
    chars.each do |c|
      if /^[0-9]+$/ === c
        array << c
      end
    end
    if array.size == 1
      zone = array
    else
      if array.include? array[2]
        new_array = []
        new_array << array[0]
        a = array[1] + array[2]
        new_array << a
        range = Range.new(new_array[0], new_array[1]).to_a
      else
        range = Range.new(array[0], array[1]).to_a
      end
      results = range.map do |c|
        c.to_i
      end
      zone = results
    end
  end
  p zone
end

# def transform(string)
#   if !string.include?("-")
#     array = []
#     array << string.to_i
#   else
#     chars = string.chars
#     array = []
#     chars.each do |c|
#       if /^[0-9]+$/ === c
#       array << c
#       end
#     end
#     if array.include? array[2]
#       new_array = []
#       new_array << array[0]
#       a = array[1] + array[2]
#       new_array << a
#       range = Range.new(new_array[0], new_array[1]).to_a
#       results = range.map do |c|
#       c.to_i
#         end
#       results
#       else
#         range = Range.new(array[0], array[1]).to_a
#         results = range.map do |c|
#           c.to_i
#           end
#         results
#     end
#   end
# end
# p transform("7")
loc = Location.find_by_name(params[:plant][:location])
location.zone == array de zone
