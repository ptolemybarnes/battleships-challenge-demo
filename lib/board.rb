require 'byebug'

class Board

  attr_reader :grid

  def initialize
    @grid = {}
  end

  def place ship, coordinate, orientation
    y = coordinate[0]
    x = coordinate[1].to_i
    x_coordinate_range = (x...(x + ship.size)).to_a
    
    x_coordinate_range.each do |x_coordinate|
      x_and_y = (y + x_coordinate.to_s).to_sym
      grid[x_and_y] = ship
    end
  end

  def location coordinate
    grid[coordinate]
  end

end