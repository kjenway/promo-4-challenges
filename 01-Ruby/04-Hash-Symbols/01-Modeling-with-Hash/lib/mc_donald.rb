ITEM = {
  "Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130,
"French fries" => 130,
"Potatoes" => 130,
"Coca" => 160,
"Sprite" => 170,
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  calories1 = ITEM[burger] + ITEM[side] + ITEM[beverage]
  return calories1
end

MEAL = {
"Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
"Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
"Best_Of_Royal_Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite"),
}

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  calories2 = []
  orders.each{|element| calories2 << ITEM[element]}
  orders.each{|element| calories2 << MEAL[element]}
  calories2.compact!
  calories3 = 0
  calories2.each{|a| calories3 += a}
  return calories3
end

p calories_counter("Cheese Burger", "Potatoes", "Coca", "Happy Meal")
