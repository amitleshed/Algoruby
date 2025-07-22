require 'set'

module Algoruby
  class HasDuplicate
    # Checks if an array has any duplicates
    #
    # @param array [Array<Object>] any array (numbers, strings, etc.)
    # @return [Boolean]

    def self.call(array)
      seen = Set.new

      array.each do |item|
        return true if seen.include?(item)
        seen.add(item)
      end

      false
    end
  end
end
