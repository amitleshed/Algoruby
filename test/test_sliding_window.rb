require_relative "./test_helper"

class TestSlidingWindow < Minitest::Test
  def test_max_numeric
    nums = [1, 3, -1, -3, 5, 3, 6, 7]
    assert_equal [3, 3, 5, 5, 6, 7], Algoruby::SlidingWindow.max(nums, 3)
  end

  def test_min_numeric
    nums = [1, 3, -1, -3, 5, 3, 6, 7]
    assert_equal [-1, -3, -3, -3, 3, 3], Algoruby::SlidingWindow.min(nums, 3)
  end

  def test_max_with_objects_and_key
    people = [{ age: 30 }, { age: 25 }, { age: 33 }, { age: 29 }]
    result = Algoruby::SlidingWindow.max(people, 2, by: ->(p) { p[:age] })
    assert_equal [{ age: 30 }, { age: 33 }, { age: 33 }], result
  end

  def test_min_with_objects_and_key
    people = [{ age: 30 }, { age: 25 }, { age: 33 }, { age: 29 }]
    result = Algoruby::SlidingWindow.min(people, 2, by: ->(p) { p[:age] })
    assert_equal [{ age: 25 }, { age: 25 }, { age: 29 }], result
  end

  def test_window_size_too_large_or_invalid
    nums = [1, 2, 3]
    assert_equal [], Algoruby::SlidingWindow.max(nums, 0)
    assert_equal [], Algoruby::SlidingWindow.max(nums, 5)
    assert_equal [], Algoruby::SlidingWindow.min(nums, -1)
  end

  def test_enum_input_not_array
    enum = (1..7)
    assert_equal [3, 4, 5, 6, 7], Algoruby::SlidingWindow.max(enum, 3)
  end
end
