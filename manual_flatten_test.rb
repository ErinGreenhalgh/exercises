require 'minitest/autorun'
require 'minitest/pride'
require_relative 'manual_flatten'

class ManualFlattenTest < Minitest::Test

  def test_it_can_flatten_one_level_of_arrays
    array = [[1, 2], [3, [4, 5]]]
    assert_equal [1, 2, 3, [4, 5]], one_level_flatten(array)
  end

  def test_it_can_flatten_two_levels_of_arrays
    array = [[1, 2], [3, [4, 5]]]
    assert_equal [1, 2, 3, 4, 5], two_level_flatten(array)
  end


end
