# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Employee
  def hire
    raise NoExperienceError if false
  end
end

class NoExperienceError < StandardError; end

class Test < Minitest::Test
  def test_exception
    employee = Employee.new
    assert_raises(NoExperienceError) { employee.hire }
  end
end
