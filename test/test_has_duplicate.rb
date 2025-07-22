require "test_helper"
require "debug"

class TestTwoSum < Minitest::Test
  def test_has_duplicate_nums
    result = Algoruby::HasDuplicate.call([1, 2, 3, 1])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call([1, 2, 3, 4])
    assert_equal false, result
  end

  def test_has_duplicate_strings
    result = Algoruby::HasDuplicate.call(['apple', 'banana', 'apple'])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call(['apple', 'banana', 'orange'])
    assert_equal false, result
  end

  def test_has_duplicate_symbols
    result = Algoruby::HasDuplicate.call([:a, :b, :a])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call([:a, :b, :c])
    assert_equal false, result
  end

  def test_has_duplicate_hashes
    result = Algoruby::HasDuplicate.call([{id: 1}, {id: 1}])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call([{id: 1}, {id: 2}])
    assert_equal false, result
  end
end