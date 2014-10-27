class Recipe
  attr_reader :name, :description, :rating, :cook_and_prep_time

  def initialize(name, description)
    @name = name
    @description = description
    @rating = rating
    @cook_and_prep_time = cook_and_prep_time
  end
end
