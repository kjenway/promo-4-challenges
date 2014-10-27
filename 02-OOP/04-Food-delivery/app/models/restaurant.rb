class Restaurant
  attr_reader :name, :city, :manager

  def initialize(name, city, manager)
    @name = name
    @city = city
    @manager = manager
  end
end