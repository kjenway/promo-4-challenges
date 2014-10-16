class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :city, :name, :address, :type_of_food
  attr_reader :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant
    # instance variables
    @city = city
    @average_rating = 0
    @name, @address, @type_of_food = name, address, type_of_food
    @all_rating = []
  end

  def rate(rate)
    if @average_rating == 0
      @average_rating = rate
      @all_rating << @average_rating
    else
      @all_rating << rate
      num_rate = @all_rating.count
      sum = 0
      @all_rating.each { |i| sum += i }
      @average_rating = sum / num_rate
    end
  end
  # TODO: implement #filter_by_city and #rate methods
  def self.filter_by_city(restos, city)
    result = []
    restos.each { |i| result << i if i.city == city }
    result
  end
end