restaurant_menu= { "Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2 }

p, e = 0 , 0
restaurant_menu.each do |food, price|
  if price > p
    p = price
    e = food
  end
end
puts "El plato mas caro es #{e} con #{p}"
#---------------------------------------------------
p, e = 100 , 0
restaurant_menu.each do |food, price|
  if price < p
    p = price
    e = food
  end
end
puts "El plato mas barato es #{e} con #{p}"
#---------------------------------------------------
p = 0
restaurant_menu.each do |food, price|
  p += price.to_f
end
puts "el promedio del menu es #{p/restaurant_menu.count}"
#---------------------------------------------------
a = []

restaurant_menu.each do |food, price|
  a.push(food)
end

puts a
#---------------------------------------------------
b = []

restaurant_menu.each do |food, price|
  b.push(price)
end

puts b

#---------------------------------------------------
restaurant_menu= { "Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2 }

i = 0
restaurant_menu.each do |food, price|
  restaurant_menu[food] = price*1.19
end

puts restaurant_menu
#---------------------------------------------------
restaurant_menu= { "Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2 }

restaurant_menu.each do |food, price|
  if food.split(" ").count >= 2
    restaurant_menu[food] = price*0.8
  end
end

puts restaurant_menu
