module Algoruby
  class TwoSum
    def initialize(nums, target)
      @nums   = nums
      @target = target
    end

    def run
      hash = {}

      @nums.each_with_index do |num, i|
        complement = @target - num
        return [hash[complement], i] if hash.key?(complement)
        hash[num] = i
      end
      
      nil
    end
  end
end
