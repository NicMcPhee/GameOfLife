class Location
  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def ==(other_location)
    return ((@x == other_location.x) and (@y == other_location.y))
  end
  
  def neighbors
    result = []
    [-1, 0, 1].each do |dx|
      [-1, 0, 1].each do |dy|
        if dx != 0 or dy != 0
          result.push(Location.new(@x+dx, @y+dy))
        end
      end
    end
    return result
  end
end