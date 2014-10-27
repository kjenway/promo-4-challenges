class OrderView
  def display_list_orders(orders, customer_id)
    result = []
    orders.each do |order|
      if order.customer_id == customer_id
        result = result << order
      end
    end
      if result == []
        puts "There is currently no order for the customer id: #{customer_id}"
      else
        result.each do |order|
        puts "customer id:#{order.customer_id}
        order id:#{order.id} - Date: #{order.date}
          #{order.composition}
          => #{order.delivery_guy}"
        end
      end
  end

  def ask_for_new_order_delivery_guy
    puts "Add a delivery guy for this new order by entering his number:"
    print "> "
    gets.chomp
  end

  def ask_for_new_order_composition
    puts "
    Please, enter your order's first element by selecting its number:"
    print "> "
    gets.chomp
  end

  def ask_for_additional_element_in_new_order
    puts "Enter a new meal's number in your order OR enter -exit- if you have finished"
    print "> "
    gets.chomp
  end

  def ask_for_new_order_customer_id
    puts "Select the customer's number for which you wish to create an order"
    print "> "
    gets.chomp
  end

  def ask_for_which_customer_id_display_orders
    puts "From wich customer do you wish to list the orders?
    Please, enter the concern customer's id:"
    print "> "
    gets.chomp
  end

  def ask_for_order_id_to_delete
    puts "Please, enter the id of the order you wish to delete:"
    print "> "
    gets.chomp
  end

end