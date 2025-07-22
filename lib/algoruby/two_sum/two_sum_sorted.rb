module Algoruby
  class TwoSumSorted
    def self.call(nums, target)
      left, right = 0, nums.length - 1

      while left < right
        sum = nums[left] + nums[right]
        if sum == target
          return [nums[left], nums[right]]
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end

      nil
    end
  end
end
