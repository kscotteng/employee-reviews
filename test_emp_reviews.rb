require 'minitest/autorun'
require 'minitest/pride'

require './req.rb'

class EmpDepTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end

# Create a new department (given its name).
  def test_new_department
    a = Department.new("Engineering")
    assert a
    assert_equal a.department, "Engineering"
  end

# Create a new employee (given his/her name, email address, phone number, and salary).
  def test_new_employee
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    assert a
    assert_equal a.name, "John Smith"
    assert_equal a.email, "jsmith@gmail.com"
    assert_equal a.phone, "123.456.7890"
    assert_equal a.salary, 100000
  end

# Add an employee to a department.
  def test_add_emp_to_dept
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    b = Department.new("Engineering")
    b.add_employee(a)
    assert_equal b.deptstaff[0].name, "John Smith"
    assert_equal b.deptstaff[0].salary, 100000
    assert_equal b.deptstaff[0].email, "jsmith@gmail.com"
    assert_equal b.deptstaff[0].phone, "123.456.7890"
    end
end




# Get an employee's name.
# Get an employee's salary.
# Get a department's name.
# Get a total salary for all employees in a department.
# Add some employee review text (a paragraph or two) to an employee.
# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
