module Algoruby
  class KSum
    def self.call(nums, target, k)
      nums.sort!
      k_sum(nums, target, k, 0)
    end

    private

    def self.k_sum(nums, target, k, start)
      result = []

      # Base case: 2Sum
      if k == 2
        left, right = start, nums.length - 1
        while left < right
          sum = nums[left] + nums[right]
          if sum == target
            result << [nums[left], nums[right]]
            left += 1
            right -= 1
            left += 1 while left < right && nums[left] == nums[left - 1]
            right -= 1 while left < right && nums[right] == nums[right + 1]
          elsif sum < target
            left += 1
          else
            right -= 1
          end
        end
        return result
      end

      # Recursive case: k > 2
      (start..nums.length - k).each do |i|
        next if i > start && nums[i] == nums[i - 1]
        sub_results = k_sum(nums, target - nums[i], k - 1, i + 1)
        sub_results.each { |sr| result << [nums[i]] + sr }
      end

      result
    end
  end
end
