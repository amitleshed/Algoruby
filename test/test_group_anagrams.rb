require "test_helper"

class TestGroupAnaframs < Minitest::Test
  def test_group_anagrams
    result = Algoruby::GroupAnagrams.call(["bebop", "bobep", "pebop", "epbop", "opbeb", "peobe"])
    assert_equal [["bebop", "bobep", "opbeb"], ["pebop", "epbop"], ["peobe"]], result
  end
end