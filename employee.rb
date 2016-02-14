
class Employee
attr_reader :name, :email, :phone, :salary, :review, :satisfactorily

  def initialize(name: nil, email: nil, phone: nil, salary: nil, review: nil, satisfactorily: nil)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = review
    @satisfactorily = satisfactorily
  end

  

end
