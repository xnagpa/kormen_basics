# Represents different sort types
require 'pry'
class SortTypes
  # O(n^2) but interchange takes O(n)
  def choice(arr)
    #[4, 5, 3, 1, 6, 7]
    for i in 0..(arr.length - 1)
      min = arr[i...- 1].min
      return arr if min.nil?
      arr = change(arr, i, arr.index(min))
    end
    arr
  end

  def change(arr, i, j)
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    arr
  end


  def insertion(arr)
  end

  def merge(arr)
  end

  def quick(arr)
  end
end
