# frozen_string_literal: true

module Algoruby
  module AnagramScan
    def self.call(words, key: nil)
      sig = key || ->(w) { w.each_char.sort.join }
      words.group_by(&sig).values
    end

    def self.indices(haystack, needle, key: nil)
      norm = key || ->(x) { x }

      h = haystack.is_a?(String) ? haystack.each_char.to_a : haystack.to_a
      n = needle.is_a?(String)   ? needle.each_char.to_a   : needle.to_a
      return [] if n.empty? || h.size < n.size

      need = Hash.new(0)
      n.each { |e| need[norm.call(e)] += 1 }

      have     = Hash.new(0)
      matched  = 0
      left     = 0
      win_size = n.size
      result   = []

      h.each_with_index do |e, right|
        k = norm.call(e)
        if need.key?(k)
          have[k] += 1
          matched += 1 if have[k] <= need[k]
        end

        while right - left + 1 > win_size
          out_k = norm.call(h[left])
          if need.key?(out_k)
            matched -= 1 if have[out_k] <= need[out_k]
            have[out_k] -= 1
          end
          left += 1
        end

        result << left if matched == win_size
      end

      result
    end
  end
end
