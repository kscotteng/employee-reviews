# require 'byebug'
class Department
attr_reader :department, :deptstaff

  def initialize(department)
    @department = department
    @deptstaff = []
  end

  def add_employee(employee)
    @deptstaff << employee
  end

  def salary_by_dept
    sum = 0
    @deptstaff.each do |i|
      sum += i.salary
    end
    sum
  end

end
