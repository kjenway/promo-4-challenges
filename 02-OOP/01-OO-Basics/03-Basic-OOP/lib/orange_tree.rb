class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :height, :age, :status
  attr_accessor :fruits

  def initialize
    @height = 0
    @age = 0
    @allive = true
    @fruits = 0
  end

  def which_height?
    return @height
  end

  def fruits?
    return @fruits
  end

  def pick_a_fruit!
    return @fruits -= 1 unless @fruits == 0
  end

  def one_year_passes!
    return "Your tree is dead :(" if @allive == false
    @age += 1
    if stillallive?
      life_growth
      fruits_available
    else
      "Your tree is dead :("
    end
  end

  def life_growth
    if @age <= 10
      @height = @age
    else
      @height = 10
    end
  end

  def stillallive?
    if @age <= 50
      @allive = true
    elsif @age > 50 && @age <= 100
      @allive = false if ((@age..101).to_a.sample.to_f) / 101 == 1
    else
      @allive = false
    end
  end

  def dead?
    if @allive
      return false
    else
      return true
    end
  end

  def fruits_available
    if @age <= 5
      @fruits = 0
    elsif @age > 5 && @age <= 10
      @fruits = 100
    elsif @age > 10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end
end


tree1 = OrangeTree.new
tree1.one_year_passes!







