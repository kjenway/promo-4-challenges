require_relative './repositories/customer_repository'
require_relative './repositories/employee_repository'
require_relative './repositories/meal_repository'
require_relative './repositories/order_repository'
require_relative './controllers/customer_controller'
require_relative './controllers/employee_controller'
require_relative './controllers/meal_controller'
require_relative './controllers/order_controller'
require_relative './controllers/restaurant_controller'
require_relative './views/router'

customer_repository = CustomerRepository.new
employee_repository = EmployeeRepository.new
meal_repository = MealRepository.new
order_repository = OrderRepository.new

customer_controller = CustomerController.new(customer_repository)
employee_controller = EmployeeController.new(employee_repository)
meal_controller = MealController.new(meal_repository)
order_controller = OrderController.new(order_repository)
restaurant_controller = RestaurantController.new(restaurant_repository)

router = Router.new(customer_controller, employee_controller, restaurant_controller, order_controller, meal_controller,)
# Start the app
router.run