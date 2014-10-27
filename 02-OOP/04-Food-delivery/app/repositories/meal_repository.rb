require_relative "../models/meal"

class MealRepository
  attr_accessor :meals

  def initialize
    @meals = [ Meal.new("Cheese Burger", 15, 1), Meal.new("Fish and Chips", 12, 2), Meal.new("Burger Rossini", 18, 3), Meal.new("Ceasar Salad", 14, 4), Meal.new("Apple Pie", 8, 5), Meal.new("Chocolate Fondant", 8, 6), Meal.new("Coffee", 2, 7) ]
  end

  def return_meal_name(meal_id)
    @meals.each do |meal|
      if meal_id == meal.id
        return meal.name
      end
    end
  end

end