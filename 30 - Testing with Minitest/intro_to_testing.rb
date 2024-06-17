# MiniTest is a unit testing framework included in Ruby standard library

require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestMath < Minitest::Test
  def test_sum1
    assert_equal(5, sum(1, 4))
  end

  def test_sum2
    assert_equal(-10, sum(-1, -9))
  end

  def test_sum3
    assert_equal(10, sum(1, 11))
  end
end