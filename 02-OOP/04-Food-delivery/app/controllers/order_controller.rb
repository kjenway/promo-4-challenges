require_relative "../repositories/order_repository"
require_relative "../repositories/meal_repository"
require_relative "../views/order_view"
require_relative "../views/meal_view"
require_relative "../controllers/customer_controller"
require_relative "../controllers/employee_controller"

class OrderController
  def initialize(order_repository)
    @order_repository = OrderRepository.new
    @view_order = OrderView.new
    @meal_repository = MealRepository.new
    @view_meal = MealView.new
    @customer_controller = CustomerController.new(customer_repository)
    @employee_controller = EmployeeController.new
  end

  def list_meals
    meals = @meal_repository.meals
    @view_meal.display_meals_list(meals)
  end

  def list_orders
    customer_id = @view_order.ask_for_which_customer_id_display_orders
    orders = @order_repository.orders
    @view_order.display_list_orders(orders, customer_id)
  end

  def add_order
    composition = []
    @customer_controller.list_customers
    customer_id = @view_order.ask_for_new_order_customer_id
    self.list_meals
    meal_id = @view_order.ask_for_new_order_composition
    composition << @meal_repository.return_meal_name(meal_id.to_i)
    p "Order's composition:#{composition}"
    selected_meal = nil
    until meal_id == "exit"
      meal_id = @view_order.ask_for_additional_element_in_new_order
      if meal_id != "exit"
        composition << @meal_repository.return_meal_name(meal_id.to_i)
        p "Order's composition:#{composition}"
      end
    end
    @employee_controller.list_delivery_guys
    delivery_guy_id = @view_order.ask_for_new_order_delivery_guy
    order = Order.new(customer_id, composition, delivery_guy_id.to_i)
    @order_repository.add_order(order)
  end

  def remove_order
    order_id = @view_order.ask_for_order_id_to_delete
    orders = @order_repository.orders
    @order_repository.remove_order(order_id.to_i)
  end

end
