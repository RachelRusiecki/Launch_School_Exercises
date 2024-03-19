# Write a test that will fail if list and the return value of list.process are different objects.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class List
  def process
    'processing'
  end
end

class Test < Minitest::Test
  def test_same
    list = List.new
    assert_same(list, list.process)
  end
end
