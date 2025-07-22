require "test_helper"

class TestTwoSum < Minitest::Test
  def test_has_duplicate_nums
    result = Algoruby::HasDuplicate.call([1, 2, 3, 1])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call([1, 2, 3, 4])
    assert_equal false, result
  end

  def test_has_duplicate_strings
    result = Algoruby::HasDuplicate.call(['Minor w/ 6 in the bass', 'Half Dim', 'Minor w/ 6 in the bass'])
    assert_equal true, result

    result = Algoruby::HasDuplicate.call(['Minor Major', 'Aug', 'Dim'])
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