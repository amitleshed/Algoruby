module Algoruby
  class TwoSum
    def self.call(nums, target)
      hash = {}

      nums.each_with_index do |num, i|
        complement = target - num
        return [hash[complement], i] if hash.key?(complement)
        hash[num] = i
      end
      
      nil
    end
  end
end
