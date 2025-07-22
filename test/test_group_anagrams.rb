require "test_helper"

class TestGroupAnaframs < Minitest::Test
  def test_group_anagrams
    result = Algoruby::GroupAnagrams.call(["eat", "tea", "tan", "ate", "nat", "bat"])
    assert_equal [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]], result
  end
end