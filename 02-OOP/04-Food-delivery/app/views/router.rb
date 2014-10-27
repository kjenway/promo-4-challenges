require_relative '../controllers/customer_controller'
require_relative '../controllers/employee_controller'
require_relative '../controllers/meal_controller'
require_relative '../controllers/order_controller'
require_relative '../controllers/restaurant_controller'

class Router
  def initialize(customer_controller, employee_controller, restaurant_controller, order_controller, meal_controller)
    @customer_controller = CustomerController.new
    @employee_controller = EmployeeController.new
    @restaurant_controller = RestaurantController.new
    @order_controller = OrderController.new
    @meal_controller = MealController.new
    @running = true
  end

  def run
    puts "Welcome to the Restaurant's app!"
    puts " -- "
    if @employee_controller.login_process == 'MANAGER'
      manager_interface
    else
      delivery_guy_interface
    end
  end

  def manager_interface
    while @running
      display_tasks_manager
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def delivery_guy_interface
    while @running
      display_tasks_delivery_guy
      action = gets.chomp.to_i
      print `clear`
      route_action_delivery_guy(action)
    end
  end

  def stop
    @running = false
  end


  private

  def route_action_manager(action)
    case action
    when 1 then @customer_controller.list_customers
    when 2 then @customer_controller.add_customer
    when 3 then @order_controller.list_orders
    when 4 then @order_controller.add_order
    when 5 then @order_controller.remove_order
    when 6 then @employee_controller.list_employees
    when 7 then stop
    else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
    end
  end

  def route_action_delivery_guy(action)
    case action
    when 1 then @order_controller.list_orders
    when 2 then @order_controller.remove_order
    when 3 then stop
    else puts "Please press 1, 2 or 3"
    end
  end

  def display_tasks_manager
    puts ""
    puts "What would you like to do?"
    puts "Options"
    puts "1 - List customers"
    puts "2 - Add Customers"
    puts "3 - View orders by customer's id"
    puts "4 - Add order"
    puts "5 - Remove order"
    puts "6 - List employees"
    puts "7 - Log out"
  end

  def display_tasks_delivery_guy
    puts ""
    puts "What would you like to do?"
    puts "Options"
    puts "1 - View orders"
    puts "2 - Complete order"
    puts "3 - Log out"
  end
end