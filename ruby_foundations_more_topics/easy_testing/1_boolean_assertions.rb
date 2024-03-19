# Write a minitest assertion that will fail if the value.odd? is not true.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_odd
    value = 2
    assert_equal(true, value.odd?)
  end
end
