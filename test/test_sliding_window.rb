require "test_helper"

class TestSlidingWindow < Minitest::Test
  def test_sliding_window_iterate
    result = Algoruby::SlidingWindow.each_window([1, 2, 3, 4, 5], 3)
    assert_equal [[1, 2, 3], [2, 3, 4], [3, 4, 5]], result
  end

  def test_sliding_window_aggregate
    result = Algoruby::SlidingWindow.aggregate([1, 2, 3, 4, 5], 3) { |w| w.sum }
    assert_equal [6, 9, 12], result
  end

  def test_sliding_window_map
    # Numbers
    result = Algoruby::SlidingWindow.map_windows([1,2,3,4,5], 3) { |w| w.sum }
    assert_equal [6, 9, 12], result

    # Hashes (sum prices)
    items = [{price: 10}, {price: 7}, {price: 3}, {price: 12}]
    result = Algoruby::SlidingWindow.map_windows(items, 2) { |w| w.sum { |h| h[:price] } }
    assert_equal [17, 10, 15], result

    # Strings (char-count windows)
    result = Algoruby::SlidingWindow.map_windows("hello".chars, 2) { |w| w.join }
    assert_equal ["he", "el", "ll", "lo"], result
  end
end