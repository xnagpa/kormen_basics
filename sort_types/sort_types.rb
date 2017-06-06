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
    arr.each.with_index do |_, ind|
      key = arr[ind]
      j = ind - 1

      while j >= 0 && arr[j] > key
        arr[j + 1] = arr[j]
        j -= 1
      end
      arr[j + 1] = key
    end
  end

  def merge_sort(arr, left, right)
    return if left >= right
    # binding.pry
    #binding.pry if right - left == 1 && arr[left] > arr[right]
    # return change(arr, left, right)[left..right] if right - left == 1 && arr[left] > arr[right]
    middle = (left + right) / 2
    merge_sort(arr, left, middle)
    merge_sort(arr, middle + 1, right)
    merge(arr, left, middle, right)
  end

  def merge(arr, left, middle, right)
    b = []
    c = []
    n1 = middle - left + 1
    n2 = right - middle
    b[n1 + 1] = 100_500
    c[n2 + 1] = 100_500
    b[0..-2] = arr[left..middle]
    c[0..-2] = arr[(middle + 1)..right]
    i = 0
    j = 0
    (left..right).each do |k|
      if b[i] <= c[j]
        arr[k] = b[i]
        i += 1
      else
        arr[k] = c[j]
        j += 1
      end
    end
    arr
  end

  def quick(arr, left, right)
    return if left >= right
    wall = partition(arr, left, right)
    quick(arr, left, wall - 1)
    quick(arr, wall + 1, right)
    arr
  end

  def partition(arr, left, right)
    wall = left
    (left..right - 1).each do |u|
      if arr[u] <= arr[right]
        change(arr, wall, u)
        wall += 1
      end
    end
    change(arr, wall, right)
    wall
  end
end
