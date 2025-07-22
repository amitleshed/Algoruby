module Algoruby
  class SlidingWindow
    # Returns every contiguous window of size k
    #
    # @param array [Array] the array to iterate
    # @param k [Integer] size of the window
    # @return [Array<Array>] all windows
    def self.each_window(array, k)
      return [] if k > array.size || k <= 0

      result = []
      (0..array.size - k).each do |i|
        window = array[i, k]
        if block_given?
          yield window
        else
          result << window
        end
      end

      result unless block_given?
    end

    # Computes an aggregate across all windows
    #
    # @param array [Array]
    # @param k [Integer]
    # @yield [window] block to compute value for each window
    # @return [Array] results for all windows
    def self.aggregate(array, k)
      results = []
      
      each_window(array, k) do |window|
        results << yield(window)
      end

      results
    end
  end
end
