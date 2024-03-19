# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_include
    list = %w(abc def ghi)
    assert_includes(list, 'xyz')
  end
end
