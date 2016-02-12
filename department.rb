class Department
attr_reader :department, :deptstaff

  def initialize(department)
    @department = department
    @deptstaff = []
  end

  def add_employee(employee)
    @deptstaff << employee
  end


end
