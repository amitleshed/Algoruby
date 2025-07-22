require "test_helper"
require "debug"

class TestExcludeAggregator < Minitest::Test
  def test_exclude_aggregator_product_except_self
    result = Algoruby::ExcludeAggregator.call([1, 2, 3, 4], neutral: 1) { |a, b| a * b }

    assert_equal [24, 12, 8, 6], result
  end

  def test_exclude_aggregator_sum_except_self
    result = Algoruby::ExcludeAggregator.call([1, 2, 3, 4], neutral: 0) { |a, b| a + b }
    
    assert_equal [9, 8, 7, 6], result
  end
end