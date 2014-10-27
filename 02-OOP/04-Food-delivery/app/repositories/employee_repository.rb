require_relative "../models/employee"

class EmployeeRepository
  attr_accessor :employees

  def initialize
    @employees = [ Employee.new("Tina", "password1", true, 1), Employee.new("Tim", "password2", false, 2), Employee.new("Tom", "password3", false, 3) ]
  end

  def check_loggin_existence(name, password)
    @employees.include?([name, password])
  end

  def add_employee(employee)
    @employees << employee
  end
end