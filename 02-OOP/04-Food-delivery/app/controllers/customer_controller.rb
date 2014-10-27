require_relative "../repositories/customer_repository"
require_relative "../views/customer_view"

class CustomerController
  def initialize(customer_repository)
    @customer_repository = CustomerRepository.new
    @view = CustomerView.new
  end

  def list_customers
    customers = @customer_repository.customers
    @view.display_customers_list(customers)
  end

  def add_customer
    name = @view.ask_for_new_customer_name
    address = @view.ask_for_new_customer_address
    customer = Customer.new(name, address)
    @customer_repository.add_customer(customer)
  end
end

# c = CustomerController.new
# c.add_customer