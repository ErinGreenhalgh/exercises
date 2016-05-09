require 'minitest/autorun'
require 'minitest/pride'
require_relative 'custom_array'

class CustomArrayTest < Minitest::Test
  def test_it_can_flatten
    c = CustomArray.new([[1,2],[3,[4,5]]])
    assert_equal [1, 2, 3, 4, 5], c.flatten
  end

end
