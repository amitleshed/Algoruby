module Algoruby
  class TwoSumClosest
    # Finds two numbers whose sum is closest to the target

    # @param nums [Array<Integer>] the input array
    # @param target [Integer] the target sum
    # @return [Array<Integer>] the pair of numbers closest to the target

    def self.call(nums, target)
      raise ArgumentError, "Array must have at least two elements" if nums.size < 2

      nums.sort!
      left, right = 0, nums.size - 1
      closest_pair = [nums[left], nums[right]]
      closest_diff = (nums[left] + nums[right] - target).abs

      while left < right
        current_sum = nums[left] + nums[right]
        current_diff = (current_sum - target).abs

        if current_diff < closest_diff
          closest_diff = current_diff
          closest_pair = [nums[left], nums[right]]
        end

        if current_sum < target
          left += 1
        elsif current_sum > target
          right -= 1
        else
          return [nums[left], nums[right]]
        end
      end

      closest_pair
    end
  end
end
