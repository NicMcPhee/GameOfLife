class Cell
  attr_reader :alive # true | false
  
  def alive_in_next_generation
    if alive
      stable_neighborhood?
    else
      fertile_neighborhood?
    end
  end
  
  def stable_neighborhood?
    number_of_neighbors == 2 || number_of_neighbors == 3
  end
  
  def fertile_neighborhood?
    number_of_neighbors == 3
  end
end