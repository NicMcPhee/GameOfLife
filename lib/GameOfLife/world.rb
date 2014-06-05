class World

  def initialize
    @living_cells = []
  end
  
  def empty?
    @living_cells.empty?
  end
  
  def set_living_at(location)
    @living_cells.push(location)
  end
  
  def alive_at?(location)
    @living_cells.include?(location)
  end

end
