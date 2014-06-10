class DeadCell
  def alive_in_next_generation
      fertile_neighborhood?
  end
  
  def fertile_neighborhood?
    number_of_neighbors == 3
  end
end