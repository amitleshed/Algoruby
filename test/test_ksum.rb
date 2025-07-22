require "test_helper"
require "debug"

class TestKsum < Minitest::Test
  def test_3_sum
    result = Algoruby::KSum.call([-1, 0, 1, 2, -1, -4], 0, 3)
    assert_equal [[-1, -1, 2], [-1, 0, 1]], result
  end

  def test_4_sum
    result = Algoruby::KSum.call([1, 0, -1, 0, -2, 2], 0, 4)
    assert_equal [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]], result
  end

  def test_5_sum
    result = Algoruby::KSum.call([1, 0, -1, 0, -2, 2, 3], 3, 5)
    assert_equal [[-2, -1, 1, 2, 3], [-2, 0, 0, 2, 3], [-1, 0, 0, 1, 3]], result
  end
end