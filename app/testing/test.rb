# def transform(string)
#   if !string.include?("-")
#     string.to_i
#   else
#     chars = string.chars
#     array = []
#     chars.each do |c|
#       if /^[0-9]+$/ === c
#       array << c
#       end
#   end
#     if array.include? array[2]
#       new_array = []
#       new_array << array[0]
#       a = array[1] + array[2]
#       new_array << a
#       range = Range.new(new_array[0], new_array[1]).to_a
#       results = range.map do |c|
#         c.to_i
#       end
#       results
#     else
#         range = Range.new(array[0], array[1]).to_a
#         results = range.map do |c|
#           c.to_i
#         end
#         results
#     end
#   end



# # transform("6a-9")
# end
