require_relative "../repositories/employee_repository"

class Employee
  attr_reader :name, :password, :manager, :id

  def initialize(name, password, manager, id)
    @name = name
    @password = password
    @manager = manager
    @id = id
  end
end
