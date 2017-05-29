# Returns index by value
# Sentinel linear search faster than better_search by a constant factor
class LinearSearch
  def dummy_search(array, value_to_be_found)
    answer = 'not_found'
    array.each_with_index do |x, index|
      answer = index if x == value_to_be_found
    end
    answer
  end

  def better_search(array, value_to_be_found)
    answer = 'not_found'
    array.each_with_index do |element, index|
      return index if element == value_to_be_found
    end
    answer
  end

  def sentinel_linear_search(array, x)
    last = array[-1]
    array[-1] = x
    i = 0
    while x != array[i]
      i += 1
    end
    array[-1] = last
    i < array.length - 1 || array[i] == x ? i : 'not_found'
  end

  def recursive_linear_search(array, x, i, array_length)
    return 'not_found' if i > array_length
    return i if array[i] == x
    recursive_linear_search(array, x, i + 1, array_length)
  end
end
