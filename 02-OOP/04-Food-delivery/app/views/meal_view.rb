class MealView
  def display_meals_list(meals)
    puts "
    Here are the available meals and their price:
    "
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}€"
    end
  end
end