require "csv"
require_relative "recipe"

class Cookbook
  attr_reader :recipes

  def initialize(csv_file)
    # @all_recipes = Hash.new
    # @counter = 0
    @recipes = []
    @csv_file = csv_file
    CSV.foreach(csv_file, "r") do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    update_csv
  end

  private

  def update_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description] }
    end
  end
end




#   class TaskRepository
# attr_reader :tasks

# def initialize
# @tasks = [] # Stocke instances de class Task
# end

# def add_task(task)
# @tasks << task
# end
# end