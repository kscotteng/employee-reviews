require 'minitest/autorun'
require 'minitest/pride'

require './req.rb'

class EmpDepTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end

  def test_new_department
    a = Department.new("Engineering")
    assert a
    assert_equal = "Engineering", a.department
  end


end
