module Algoruby
  class ExcludeAggregator
    # @param array [Array<Numeric>] the array of elements
    # @param neutral [Numeric] the identity element for the operation
    #        (e.g., 1 for product, 0 for sum)
    # @yield [acc, value] the aggregation block
    
    def self.call(array, neutral:, &block)
      n = array.length
      result = Array.new(n, neutral)

      # Prefix aggregation
      prefix = neutral
      (0...n).each do |i|
        result[i] = prefix
        prefix = block.call(prefix, array[i])
      end

      # Suffix aggregation
      suffix = neutral
      (n-1).downto(0).each do |i|
        result[i] = block.call(result[i], suffix)
        suffix = block.call(suffix, array[i])
      end

      result
    end
  end
end
