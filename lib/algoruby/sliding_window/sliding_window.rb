# frozen_string_literal: true

module Algoruby
  module SlidingWindow
    def self.max(sequence, window_size, by: nil)
      key     = by || ->(x) { x }
      values  = sequence.to_a
      return [] if window_size <= 0 || values.size < window_size

      candidate_indexes = []
      maxima            = []

      values.each_with_index do |value, index|
        while candidate_indexes.any? && key.call(values[candidate_indexes.last]) <= key.call(value)
          candidate_indexes.pop
        end
        candidate_indexes << index
        candidate_indexes.shift if candidate_indexes.first <= index - window_size
        maxima << values[candidate_indexes.first] if index >= window_size - 1
      end

      maxima
    end

    def self.min(sequence, window_size, by: nil)
      key     = by || ->(x) { x }
      values  = sequence.to_a
      return [] if window_size <= 0 || values.size < window_size

      candidate_indexes = []
      minima            = []

      values.each_with_index do |value, index|
        while candidate_indexes.any? && key.call(values[candidate_indexes.last]) >= key.call(value)
          candidate_indexes.pop
        end
        candidate_indexes << index
        candidate_indexes.shift if candidate_indexes.first <= index - window_size
        minima << values[candidate_indexes.first] if index >= window_size - 1
      end

      minima
    end
  end
end
