require "test/unit"
require "rspec/mocks/standalone"

require_relative "../lib/GameOfLife/living_cell"
require_relative "../lib/GameOfLife/dead_cell"

class TestCell < Test::Unit::TestCase
  
  def setup
    @living_cell = LivingCell.new
    @dead_cell = DeadCell.new
  end
  
  def check_cell_survival(cell, number_of_neighbors, expected_to_survive)
    allow(cell).to receive(:number_of_neighbors) { number_of_neighbors }
    assert_equal expected_to_survive, cell.alive_in_next_generation
  end
  
  def assert_cell_is_alive_in_next_generation(cell, number_of_neighbors)
    check_cell_survival(cell, number_of_neighbors, true)
  end
  
  def assert_cell_is_dead_in_next_generation(cell, number_of_neighbors)
    check_cell_survival(cell, number_of_neighbors, false)
  end
  
  def test_living_cell_with_two_or_three_neighbors_survives
    assert_cell_is_alive_in_next_generation(@living_cell, 2)
    assert_cell_is_alive_in_next_generation(@living_cell, 3)
  end
  
  def test_living_cell_with_one_or_four_neighbors_dies
    assert_cell_is_dead_in_next_generation(@living_cell, 1)
    assert_cell_is_dead_in_next_generation(@living_cell, 4)
  end
  
  def test_dead_cell_with_three_neighbors_resuscitates
    assert_cell_is_alive_in_next_generation(@dead_cell, 3)
  end
  
  def test_dead_cell_with_two_or_four_neighbors_stays_dead
    assert_cell_is_dead_in_next_generation(@dead_cell, 2)
    assert_cell_is_dead_in_next_generation(@dead_cell, 4)
  end

end
