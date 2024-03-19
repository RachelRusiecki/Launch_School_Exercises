# Write a minitest assertion that will fail if the Array list is not empty.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_empty
    list = %w(a b c)
    assert_empty(list)
  end
end
