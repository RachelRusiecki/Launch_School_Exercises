# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_downcase
    value = 'ABC'
    assert_equal('xyz', value.downcase)
  end
end
