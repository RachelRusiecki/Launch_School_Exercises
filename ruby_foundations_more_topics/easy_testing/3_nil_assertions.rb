# Write a minitest assertion that will fail if value is not nil.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_nil
    value = 1
    assert_nil(value)
  end
end
