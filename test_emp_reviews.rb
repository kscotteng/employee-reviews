require 'minitest/autorun'
require 'minitest/pride'

require './employee.rb'


class EmpDepTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end
end
