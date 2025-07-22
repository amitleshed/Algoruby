require "test_helper"
require "debug"

class TestGroupAnaframs < Minitest::Test
  def test_group_anagrams
    result = Algoruby::GroupAnagrams.call(["eat", "tea", "tan", "ate", "nat", "bat"])
    assert_equal [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]], result
  end
end