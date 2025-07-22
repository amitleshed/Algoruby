module Algoruby
  class MaximumSubarray
    def self.call(nums)
      current_sum = max_sum = nums.first

      nums[1..-1].each do |num|
        current_sum = [num, current_sum + num].max
        max_sum = [max_sum, current_sum].max
      end

      max_sum
    end
  end
end
