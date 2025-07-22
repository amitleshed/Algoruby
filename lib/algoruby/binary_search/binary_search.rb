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
  end
end
