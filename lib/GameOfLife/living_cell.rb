class LivingCell
  
  def alive_in_next_generation
    number_of_neighbors == 2 || number_of_neighbors == 3
  end
  
end