class Display
  def ask_user_for_new_recipe_name
    puts "Add a new recipe's name"
    print "> "
    gets.chomp
  end

  def ask_user_for_new_recipe_description
    puts "Add your new recipe's description"
    print "> "
    gets.chomp
  end

  def print_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
    end
      puts "Do you wish to see the complete description of one recipe? Please answer with yes or no"
      print "> "
      answer = gets.chomp
  end

  def choose_complete_recipe
    puts "Please enter the number of the recipe you wish to display"
    print "> "
    gets.chomp
  end

  def print_complete_recipe(recipe)
    puts "#{recipe.name} - #{recipe.rating}  #{recipe.cook_and_prep_time} #{recipe.description}"

  end

  def ask_user_for_recipe_id_to_delete
    puts "What's the number of the recipe you wish to delete?"
    print "> "
    gets.chomp
  end

  def ask_user_for_key_word
    puts "What's the key word you wish to search on Marmiton?"
    print "> "
    gets.chomp
  end

  def list_recipes_from_marmiton(array)
    puts "Here are the recipes including your key word from Marmiton:"
    p array
    array.each_with_index do |recipe_marmiton, index|
      puts "#{index + 1} - #{recipe_marmiton[:name]}"
      end
    puts "Put the number of the recipes you wish to add to your cookbook"
    print "> "
    gets.chomp
  end
end
