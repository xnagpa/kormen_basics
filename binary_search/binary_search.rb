# O(lg n)
require 'pry'
class BinarySearch
  def search(arr, x)
    left_border = 0
    right_border = arr.length - 1
    while left_border <= right_border
      middle = (left_border + right_border) / 2
      return middle if arr[middle] == x

      if arr[middle] < x
        left_border = middle + 1
      elsif arr[middle] > x
        right_border = middle - 1
      end

    end
    'NOT_FOUND'
  end

  def search_recursive(arr, x, left_border, right_border)
    return 'NOT_FOUND' if left_border > right_border
    middle = (left_border + right_border) / 2
    return middle if arr[middle] == x

    if arr[middle] < x
      search_recursive(arr, x, middle + 1, right_border)
    elsif arr[middle] > x
      search_recursive(arr, x, left_border, middle - 1)
    end
  end
end
