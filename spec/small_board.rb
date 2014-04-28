require_relative '../lib/cookie_monster/console'

puts CookieModel.new.find_path([ 0, 0, 3, 1, 5, 2, 1, 5, 4, 1, 3, 3], 11)