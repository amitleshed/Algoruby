module Algoruby
  class GroupAnagrams
    def self.call(strs)
      groups = Hash.new { |h, k| h[k] = [] }
      
      strs.each do |word|
        key = word.chars.sort.join
        groups[key] << word
      end

      groups.values
    end
  end
end
