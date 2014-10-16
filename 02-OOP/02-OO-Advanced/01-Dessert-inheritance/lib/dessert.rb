class Dessert
attr_accessor :name, :calories

  def initialize(name, calories)
<<<<<<< HEAD
    @name = name
    @calories = calories
=======
>>>>>>> 09dde29a13fdd3dd1c053d423bfd6c47e0ac7970
  end

  def healthy?
    if @calories < 200
      true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
<<<<<<< HEAD
attr_reader :flavor

=======
>>>>>>> 09dde29a13fdd3dd1c053d423bfd6c47e0ac7970
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    if @flavor == "black licorice"
      false
    else
      super
    end
  end
end

dessert1 = Dessert.new("gateau", 300)
p dessert1.healthy?
p dessert1.delicious?

jellybean1 = JellyBean.new("jelly", 150, "black licorice")
p jellybean1.healthy?
p jellybean1.delicious?