require_relative "../repositories/order_repository"

class Order
  attr_reader :customer_id, :composition, :delivery_guy
  attr_accessor :id, :date

  def initialize(customer_id, composition, delivery_guy)
    @customer_id = customer_id
    @composition = composition
    @delivery_guy = delivery_guy
    @id = id
    @date = date
  end
end