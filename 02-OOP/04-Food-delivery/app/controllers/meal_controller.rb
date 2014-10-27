require_relative "../repositories/meal_repository"
require_relative "../views/meal_view"

class MealController
  def initialize(meal_repository)
    @meal_repository = MealRepository.new
    @view = MealView.new
  end

  def list_meals
    meals = @meal_repository.meals
    @view.display_meals_list(meals)
  end
end

