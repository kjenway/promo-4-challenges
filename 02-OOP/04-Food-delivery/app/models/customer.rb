require_relative "../repositories/customer_repository"

class Customer
  attr_reader :name, :address
  attr_accessor :id

  def initialize(name, address)
    @name = name
    @address = address
    @id = id
  end
end