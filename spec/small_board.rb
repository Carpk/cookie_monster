require_relative '../lib/cookie_monster/console'

map2 = [[ 1, 3],
        [-1, 3]]

map3 = [[ 1, 3, 0],
        [-1, 3, 2],
        [ 5, 4, 8]]


puts "tests the very last line of map:"
puts "should be 28, gets: #{CookieModel.new.find_path([ 0, 0, 3, 1, 5, 2, 1, 5, 4, 1, 3, 3], 12)}"

puts "tests the last two lines of map:"
puts "should be 34, gets: #{CookieModel.new.find_path([ 1, 3, 0, 5,-1, 7,-1,-1, 0, 4, 2, 1], 10)}"


puts "should be 7, gets: #{CookieModel.new(map2).find_path}"

puts "should be 19, gets: #{CookieModel.new(map3).find_path}"