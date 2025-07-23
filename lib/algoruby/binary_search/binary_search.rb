module Algoruby
  class BinarySearch
    def self.call(array, target)
      left, right = 0, array.size - 1

      while left <= right
        mid = (left + right) / 2
        
        if array[mid] == target
          return mid
        elsif array[mid] < target
          left = mid + 1
        else
          right = mid - 1
        end
      end

      nil
    end

    def self.first_greater(arr, x)
      left = 0
      right = arr.size
      while left < right
        mid = (left + right) / 2
        if arr[mid] > x
          right = mid
        else
          left = mid + 1
        end
      end
      left < arr.size ? left : nil
    end

    def self.last_less_or_equal(arr, x)
      left = 0
      right = arr.size
      while left < right
        mid = (left + right) / 2
        if arr[mid] <= x
          left = mid + 1
        else
          right = mid
        end
      end
      (left - 1) >= 0 ? (left - 1) : nil
    end
  end
end

