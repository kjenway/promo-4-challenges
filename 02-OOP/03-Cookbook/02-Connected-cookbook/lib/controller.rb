require_relative "cookbook"
require_relative "recipe"
require_relative "display"
require_relative "parse_html"

require 'open-uri'

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    recipes = @cookbook.recipes
    print_complete_recipe = @display.print_recipes(recipes)
    if print_complete_recipe == "yes"
      recipe_id = @display.choose_complete_recipe.to_i
      recipe = @cookbook.display_recipe(recipe_id - 1)
      @display.print_complete_recipe(recipe)
    end
  end

  def create
    # J'ai besoin de
    # - name
    # - description
    name = @display.ask_user_for_new_recipe_name
    description = @display.ask_user_for_new_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    recipe_id = @display.ask_user_for_recipe_id_to_delete
    @cookbook.remove_recipe(recipe_id)
  end

  def search_and_list
    #j'ai besoin d'un mot clé
    key_word = @display.ask_user_for_key_word

    @parse_html = Parse.new("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{key_word}")
    array_recipes_marmiton = @parse_html.collect_recipe_from_marmiton

    answer = @display.list_recipes_from_marmiton(array_recipes_marmiton)
    answer = answer.scan(/\d+/)

    answer.each do |i|
      current_recipe = array_recipes_marmiton[i.to_i - 1]
      recipe = Recipe.new(current_recipe[:name], current_recipe[:description], current_recipe[:rating], current_recipe[:cook_and_prep_time])
      @cookbook.add_recipe(recipe)
    end
  end
end

# require_relative "task"

# class Controller
# def initialize(task_repository, display)
# # Injection de dependance
# @task_repository = task_repository
# @display = display
# end
# def list_tasks
# # recupere toutes les tasks
# tasks = @task_repository.tasks
# # affiche
# @display.print_tasks(tasks)
# end

# def add_task
# description = @display.ask_user_for_new_task_description
# task = Task.new(description)
# @task_repository.add_task(task)
# end

# def mark_task_as_done
# index = @display.ask_user_for_task_id_to_mark_as_done
# if index
# task = @task_repository.tasks[index]
# task.mark_as_done if task
# end
# end

# # TODO: cocher, supprimer
# end