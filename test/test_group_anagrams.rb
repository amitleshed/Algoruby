require_relative "./test_helper"

class TestAnagramScan < Minitest::Test
  def test_group_anagrams_strings
    input  = %w[bebop bobep pebop epbop opbeb peobe]
    result = Algoruby::AnagramScan.call(input)
    expected = [["bebop", "bobep", "opbeb"], ["pebop", "epbop"], ["peobe"]]
    assert_equal expected, result
  end

  def test_indices_string
    assert_equal [0, 6], Algoruby::AnagramScan.indices("cbaebabacd", "abc")
  end

  def test_indices_array
    events  = [:create, :notify, :update, :foo, :bar, :update, :create, :notify]
    pattern = [:create, :update, :notify]
    assert_equal [0, 5], Algoruby::AnagramScan.indices(events, pattern)
  end

  def test_indices_with_key_normalizer
    haystack = %w[A b C a B c]
    needle   = %w[a b c]
    downcase = ->(ch) { ch.downcase }
    assert_equal [0, 1, 2, 3],
      Algoruby::AnagramScan.indices(haystack, needle, key: downcase)
  end
end