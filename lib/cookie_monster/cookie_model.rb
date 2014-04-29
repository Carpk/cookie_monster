
class CookieModel
  attr_reader :max_cookies

  def initialize(map = create_map)
    @map = map
    @max_cookies = 0
  end

  def find_path(row = @map[0], row_index = 0, passing_sum = 0)
    row_index += 1
    # row.each_with_index.map! {|e, i|  i..-1 if e == -1}
    catch :done do
      row.each_with_index do |local_cookie, col_position|
        if local_cookie == -1
          row.clear
          throw :done
        end
        local_sum = row[0..col_position].reduce(:+) + passing_sum
        unless @map[row_index] == nil
          p @map[row_index][col_position..-1]
          find_path(@map[row_index][col_position..-1], row_index, local_sum)
        else
          @max_cookies = (local_sum ) if (local_sum) > @max_cookies && row[col_position + 1] == nil
        end
      end
    end
    @max_cookies
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