require "test_helper"

class TestMaxSubarray < Minitest::Test
  def test_two_sum_finds_indices
    result = Algoruby::MaximumSubarray.call([-2,1,-3,4,-1,2,1,-5,4])
    assert_equal 6, result
  end
end