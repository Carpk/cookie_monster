
class CookieModel

  def initialize
    @map = create_map
  end

  def find_path(row = @map[0], row_index = 0)
    max_cookies = 0

    row.each_with_index do |local_cookie, col_position|
      break if local_cookie == -1
      local_cookie if col_position + 1 == nil && @map[row_index + 1] == nil
      local_cookie += find_path(@map[row_index + 1][col_position..-1], row_index + 1) unless @map[row_index + 1] == nil
      max_cookies = local_cookie if local_cookie > max_cookies
    end

    max_cookies
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