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
    a = Department.new("Development Engineering")
    assert_equal a.department, "Development Engineering"
  end

# Create a new employee (given his/her name, email address, phone number, and salary).
  def test_new_employee
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    assert_equal a.name, "John Smith"
    assert_equal a.email, "jsmith@gmail.com"
    assert_equal a.phone, "123.456.7890"
    assert_equal a.salary, 100000
  end

# Add an employee to a department.
  def test_add_emp_to_dept
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    b = Department.new("Development Engineering")
    b.add_employee(a)
    assert_equal b.deptstaff[0].name, "John Smith"
    assert_equal b.deptstaff[0].salary, 100000
    assert_equal b.deptstaff[0].email, "jsmith@gmail.com"
    assert_equal b.deptstaff[0].phone, "123.456.7890"
  end

# Get an employee's name.
  def test_getempname
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    b = Employee.new("John Doe", "jdoe@gmail.com", "123.456.7897", 120000)
    assert_equal a.name, "John Smith"
    refute_equal a.name, "Kevin Scott"
    assert_equal b.name, "John Doe"
    refute_equal b.name, "Kevin Scott"
  end

# Get an employee's salary.
  def test_getempsalary
    a = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    b = Employee.new("John Doe", "jdoe@gmail.com", "123.456.7897", 120000)
    assert_equal a.salary, 100000
    refute_equal a.salary, 5
    assert_equal b.salary, 120000
    refute_equal b.salary, 5
  end

# Get a department's name.
  def test_getdeptname
    a = Department.new("Development Engineering")
    b = Department.new("Process Engineering")
    assert_equal a.department, "Development Engineering"
    refute_equal a.department, "Process Engineering"
    assert_equal b.department, "Process Engineering"
    refute_equal b.department, "Development Engineering"
  end

# Get a total salary for all employees in a department.
  def test_salary_by_dept
    a = Department.new("Development Engineering")
    b = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
    c = Employee.new("John Doe", "jdoe@gmail.com", "123.456.7897", 120000)
    a.add_employee(b)
    a.add_employee(c)
    assert_equal a.salary_by_dept, 220000
    refute_equal a.salary_by_dept, 22000
  end

# Add some employee review text (a paragraph or two) to an employee.
  # def test_empreviewtext
  #   a = Department.new ("Development Engineering")
  #   b = Employee.new("John Smith", "jsmith@gmail.com", "123.456.7890", 100000)
  #
  # end

end



# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
