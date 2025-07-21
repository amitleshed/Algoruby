module Algoruby
  class TwoSumLessThan
    def self.call(nums, less_than)
      return nil if nums.size < 2

      nums.sort!
      left, right = 0, nums.length - 1
      max_sum = -Float::INFINITY
      best_pair = nil

      while left < right
        sum = nums[left] + nums[right]

        if sum < less_than
          if sum > max_sum
            max_sum = sum
            best_pair = [nums[left], nums[right]]
          end
          left += 1
        else
          right -= 1
        end
      end

      best_pair
    end
  end
end
