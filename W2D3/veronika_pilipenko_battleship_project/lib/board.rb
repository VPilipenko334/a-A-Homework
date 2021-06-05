class Board
    attr_reader :size
  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = (n * n)
  end

  def size 
    return @size
  end

  def [](position)    #containing a pair of indices in the form [row, column] repr a position on the board
    row, column = position 
    ele = @grid[row][column]          #@grid is a 2D array --> we are indexing into it by finding position
    return ele
  end

  def []=(position, value)
    #should set the given position of @grid to the given value 
    row, column = position 
    @grid[row][column] = value 
  end

#retyrn a number repredsenting the count of :S values 
  def num_ships
    @grid.flatten.count {|ele| ele == :S }      
  end

#   def num_ships
#     count = 0
#     @grid.each do |sub_arr|
#         sub_arr.each do |num|
#         if ele == :S 
#             count += num
#         end
#     end
# end
#     return count 
#   end

def attack(position)
         if self[position] == :S  #if this is true
            self[position] = :H          #reassign to H 
            print "you sunk my battleship!"
            return true 
         else
            self[position] = :X 
            return false 
        end
    end 
end

def place_random_ships
    total_ships = @size * 0.25 
    
    while self.num_ships < total_ships 
   
    random_placement_row = rand(0...@grid.length)
    random_placement_column = rand(0...@grid.length)
    position = [random_placement_row, random_placement_column]
    self[position] = :S
    end

end