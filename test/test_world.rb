require "test/unit"

require_relative "../lib/GameOfLife/world"
require_relative "../lib/GameOfLife/location"

class TestWorld < Test::Unit::TestCase
  
  def setup
    @empty_world = World.empty
    @location = Location.new(1, 1)
  end

  def test_an_empty_world_is_empty
    assert @empty_world.empty?
  end
  
  def test_an_empty_world_stays_empty_after_a_tick
    next_world = @empty_world.tick
    assert next_world.empty?
  end
  
  def test_a_new_world_does_not_have_a_cell
    assert (not @empty_world.alive_at?(@location))
  end
  
  def test_a_cell_can_be_added_to_the_world
    world = World.empty
    world.set_living_at(@location)
    assert world.alive_at?(@location)
  end
  
  def test_after_adding_a_cell_the_world_is_not_empty
    world = World.empty
    world.set_living_at(@location)
    assert (not world.empty?)
  end

end
