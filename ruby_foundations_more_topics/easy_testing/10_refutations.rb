# Write a test that will fail if 'xyz' is one of the elements in the Array list:

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_include
    list = %w(abc xyz)
    refute_includes(list, 'xyz')
  end
end
