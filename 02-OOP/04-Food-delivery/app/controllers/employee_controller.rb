require_relative "../repositories/employee_repository"
require_relative "../views/employee_view"

class EmployeeController
  def initialize(employee_repository)
    @employee_repository = EmployeeRepository.new
    @view = EmployeeView.new
  end

  def list_employees
    employees = @employee_repository.employees
    @view.display_employees_list(employees)
  end

  def list_delivery_guys
    employees = @employee_repository.employees
    @view.display_delivery_guy_list(employees)
  end

  def login_process
    valid_login = []
    login_name = @view.ask_for_login_name
    login_password = @view.ask_for_login_password
    employees = @employee_repository.employees
    employees.each do |employee|
      if employee.name == login_name && employee.password == login_password
        valid_login << login_name
        valid_login << login_password
      end
    end
    if valid_login != []
      @view.login_welcome(login_name, employees)
    else
       puts "You are not recognized by the system: Try again."
    end
  end

end

