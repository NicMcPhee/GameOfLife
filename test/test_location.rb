require "test/unit"

require_relative "../lib/GameOfLife/location"

class TestLocation < Test::Unit::TestCase

  def test_coordinates_are_set_in_construction
    location = Location.new(2, 3)
    assert_equal 2, location.x
    assert_equal 3, location.y
  end
  
  def test_neighbors
    location = Location.new(2, 3)
    neighbors = location.neighbors
    assert_equal 8, neighbors.count
    assert neighbors.include?(Location.new(1, 2))
    assert neighbors.include?(Location.new(1, 3))
    assert neighbors.include?(Location.new(1, 4))
    assert neighbors.include?(Location.new(2, 2))
    assert neighbors.include?(Location.new(2, 4))
    assert neighbors.include?(Location.new(3, 2))
    assert neighbors.include?(Location.new(3, 3))
    assert neighbors.include?(Location.new(3, 4))
  end

end
