require "test_helper"

class TestTwoSum < Minitest::Test
  def test_two_sum_finds_indices
    result = Algoruby::TwoSum.new([2, 7, 11, 15], 9).run
    assert_equal [0, 1], result
  end

  def test_two_sum_if_no_pair
    result = Algoruby::TwoSum.new([2, 7, 11, 15], 27).run
    assert_nil result
  end
end