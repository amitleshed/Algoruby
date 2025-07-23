require "test_helper"

class TestBinarySearch < Minitest::Test
  def test_binary_search_nums
    result = Algoruby::BinarySearch.call([1, 3, 5, 7, 9], 5)
    assert_equal 2, result


    result = Algoruby::BinarySearch.call([1, 3, 5, 7, 9], 8)
    assert_nil result
  end

  def test_binary_search_strings
    names  = ["Trane", "Bird", "Dizz", "Bud", "Monk" ]
    result = Algoruby::BinarySearch.call(names, "Dizz")

    assert_equal 2, result
  end

  def test_binary_search_scenarios
    arr = [1, 3, 5, 7, 9]

    result = Algoruby::BinarySearch.first_greater(arr, 5)
    assert_equal 3, result

    result = Algoruby::BinarySearch.last_less_or_equal(arr, 5)
    assert_equal 2, result
  end
end
