class Meal
  attr_reader :name, :price, :id

  def initialize(name, price, id)
    @name = name
    @price = price
    @id = id
  end
end