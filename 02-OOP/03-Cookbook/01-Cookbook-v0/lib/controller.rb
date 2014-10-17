require_relative "cookbook"
require_relative "recipe"
require_relative "display"

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    recipes = @cookbook.recipes
    @display.print_recipes(recipes)
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