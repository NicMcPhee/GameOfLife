require "test/unit"
require "rspec/mocks/standalone"

require_relative "../lib/GameOfLife/cell"

class TestCell < Test::Unit::TestCase
  
  def check_cell_survival(is_alive, number_of_neighbors, expected_to_survive)
    cell = Cell.new
    allow(cell).to receive(:alive) { is_alive }
    allow(cell).to receive(:number_of_neighbors) { number_of_neighbors }
    assert_equal expected_to_survive, cell.alive_in_next_generation
  end
  
  def assert_cell_is_alive_in_next_generation(is_alive, number_of_neighbors)
    check_cell_survival(is_alive, number_of_neighbors, true)
  end
  
  def assert_cell_is_dead_in_next_generation(is_alive, number_of_neighbors)
    check_cell_survival(is_alive, number_of_neighbors, false)
  end
  
  def test_living_cell_with_two_or_three_neighbors_survives
    assert_cell_is_alive_in_next_generation(true, 2)
    assert_cell_is_alive_in_next_generation(true, 3)
  end
  
  def test_living_cell_with_one_or_four_neighbors_dies
    assert_cell_is_dead_in_next_generation(true, 0)
    assert_cell_is_dead_in_next_generation(true, 4)
  end
  
  def test_dead_cell_with_three_neighbors_resuscitates
    assert_cell_is_alive_in_next_generation(false, 3)
  end
  
  def test_dead_cell_with_two_or_four_neighbors_stays_dead
    assert_cell_is_dead_in_next_generation(false, 2)
    assert_cell_is_dead_in_next_generation(false, 4)
  end

end
