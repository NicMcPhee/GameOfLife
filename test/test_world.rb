require "test/unit"
# require "shoulda"

require_relative "../lib/GameOfLife/world"

class TestWorld < Test::Unit::TestCase
#  context "creating an new world" do
#    should "be empty" do
#      world = World.new
#      assert_equal 0, world.living_cells.count
#    end
#  end

  def test_a_new_world_is_empty
    world = World.new
    assert_equal 0, world.living_cells.count
  end
  
  def test_a_cell_can_be_added_to_the_world
    world = World.new
    world.set_living_at(1, 1)
    assert_equal 1, world.living_cells.count
  end

end