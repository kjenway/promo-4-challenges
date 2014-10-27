require_relative "../models/customer"

class CustomerRepository
  attr_accessor :customers

  def initialize
    @customers = []
    @next_id = 1
    add_customer(Customer.new("namecusto1", "75011, Paris"))
    add_customer(Customer.new("namecusto2", "75012, Paris"))
    add_customer(Customer.new("namecusto3", "75013, Paris"))
  end

  def add_customer(customer)
    customer.id = @next_id
    @next_id += 1
    @customers << customer
  end

end