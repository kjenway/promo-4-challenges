class CustomerView
  def display_customers_list(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name}"
    end
  end

  def ask_for_new_customer_name
    puts "Add a new customer's name"
    print "> "
    gets.chomp
  end

  def ask_for_new_customer_address
    puts "Add a new customer's address"
    print "> "
    gets.chomp
  end
end