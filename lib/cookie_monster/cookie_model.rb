
class CookieModel

  def initialize
    @map = create_map
  end

  def find_path(map ||= @map)

    possible_cookies = 0
    map.each_with_index do |row, row_position|
      cookies.each_with_index do |cookies, col_position|
        break if cookies == -1
        cookies if col_position + 1 == nil
        find_path(map[(row_position + 1)..-1][col_position..-1])
      end
    end

  end

  def create_map
   [[ 1, 3, 0, 5,-1, 7,-1,-1, 0, 4, 2, 1],
    [-1, 3, 2, 1,-1, 4,-1, 5, 3,-1, 1, 0],
    [ 5, 4, 8,-1, 3, 2, 2,-1, 4,-1, 0, 0],
    [ 2, 1, 0, 4, 1,-1, 8, 0, 2,-1, 2, 5],
    [ 1, 4, 0, 1,-1, 0, 3, 2, 2, 4, 1, 4],
    [ 0, 1, 4, 1, 1, 6, 1, 4, 5, 2, 1, 0],
    [ 3, 2, 5, 2, 0, 7,-1, 2, 1, 0,-1, 3],
    [ 0,-1, 4,-1,-1, 3, 5, 1, 4, 2, 1, 2],
    [ 5, 4, 8,-1, 3, 2, 2,-1, 4,-1, 0, 0],
    [ 2, 1, 0, 4, 1,-1, 8, 0, 2,-1, 2, 5],
    [ 1, 3, 0, 5,-1, 7,-1,-1, 0, 4, 2, 1],
    [ 0, 0, 3, 1, 5, 2, 1, 5, 4, 1, 3, 3]]
  end
end