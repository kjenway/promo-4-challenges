require 'date'
require_relative "../models/order"

class OrderRepository
  attr_accessor :orders

  def initialize
    @orders = []
    @next_id = 1
  end

  def add_order(order)
    order.id = @next_id
    @next_id += 1
    order.date = DateTime.now
    @orders << order
  end

  def remove_order(order_id)
    @orders.each do |order|
      if order.id == order_id
        @orders.delete(order)
      end
    end
  end

end