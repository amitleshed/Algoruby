require "test_helper"
require "debug"

class TestTwoSum < Minitest::Test
  def test_two_sum_finds_indices
    result = Algoruby::TwoSum.call([2, 7, 11, 15], 9)
    assert_equal [0, 1], result
  end

  def test_two_sum_if_no_pair
    result = Algoruby::TwoSum.call([2, 7, 11, 15], 27)
    assert_nil result
  end

  def test_two_sum_closest
    result = Algoruby::TwoSumClosest.call([2, 7, 11, 15], 10)
    assert_equal [2, 7], result
  end

  def test_two_sum_percise
    result = Algoruby::TwoSumClosest.call([2, 7, 11, 15], 17)
    assert_equal [2, 15], result
  end

  def test_two_sum_less_than
    result = Algoruby::TwoSumLessThan.call([2, 7, 11, 15], 10)
    assert_equal [2, 7], result
  end

  def test_two_sum_less_than_nil
    result = Algoruby::TwoSumLessThan.call([4, 5, 12, 20], 6)
    assert_nil result
  end

  def test_two_sum_sorted
    result = Algoruby::TwoSumSorted.call([20, 5, 12, 4], 24)
    assert_equal [20, 4], result
  end

  def test_two_sum_sorted_nil
    result = Algoruby::TwoSumSorted.call([20, 5, 12, 4], 19)
    assert_nil result
  end
end