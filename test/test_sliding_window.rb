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
end