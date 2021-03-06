# encoding: utf-8

require 'helper'

class TestFakerNameNL < Test::Unit::TestCase
  def setup
    @tester = FFaker::NameNL
  end

  def test_name
    assert_match(/(\w+\.? ?){2,3}/, @tester.name)
  end

  def test_prefix
    assert_match(/[A-Z][a-z]+\.?/, @tester.prefix)
  end

  def test_suffix
    assert_match(/[A-Z][a-z]*\.?/, @tester.suffix)
  end
end
