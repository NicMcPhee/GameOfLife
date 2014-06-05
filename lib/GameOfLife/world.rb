class World

  def initialize
    @living_cells = []
  end
  
  def empty?
    @living_cells.empty?
  end
  
  def set_living_at(x, y)
    @living_cells.push([x, y])
  end
  
  def alive_at?(x, y)
    @living_cells.include?([x, y])
  end

end
