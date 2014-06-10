class LivingCell
  
  def alive_in_next_generation
    stable_neighborhood?
  end
  
  def stable_neighborhood?
    number_of_neighbors == 2 || number_of_neighbors == 3
  end
  
end