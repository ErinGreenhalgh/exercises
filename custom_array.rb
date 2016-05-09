class CustomArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def flatten
    one_level = one_level_flatten(@array)
    iterate_through_array(one_level)
  end

  def one_level_flatten(array)
    iterate_through_array(array)
  end

  def iterate_through_array(array)
    flat = []
    array.map do |element|
      if element.class != Array
        flat << element
      else
        element.each { |e| flat << e}
      end
    end
    flat
  end

end
