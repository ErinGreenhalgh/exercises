def one_level_flatten(array)
  iterate_through_array(array)
end

def two_level_flatten(array)
  one_level = one_level_flatten(array)
  iterate_through_array(one_level)
end

def iterate_through_array(array)
  flat = []
  array.map do |element|
    if element.class == Fixnum
      flat << element
    else
      element.each { |e| flat << e}
    end
  end
  flat
end
