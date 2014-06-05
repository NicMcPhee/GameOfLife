class World
  attr_reader :living_cells

  def initialize
    @living_cells = []
  end
  
  def set_living_at(x, y)
    @living_cells.push([x, y])
  end
end