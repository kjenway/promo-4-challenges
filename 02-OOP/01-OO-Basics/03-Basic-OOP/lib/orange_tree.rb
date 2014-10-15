class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :height, :age, :status
  attr_accessor :fruits

  def initialize (height, age, allive, fruits)
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

  def pick
    unless @fruits == 0
    return @fruits -= 1
  end

  def one_year_passes!
    if @allive = false
    return "Your tree is dead :("
    else
    return @age +=1
  end

  private

  def life_growth
    if @age <= 10
      @height = @age
  end

  def allive
    if @age <= 50
      @allive = true
    elsif @age > 50 && @age <= 100
      if ((@age..101).to_a.sample.to_f)/101 == 1
        @allive = false
    else
      @allive = false
    end
   end

   def probability

end
