require_relative 'meal.rb'

new_meal = Meal.new("Banana Bread", "1.5 hours", "Put the oven on and mash some bananas")
second_meal = Meal.new("Mushroom Sosatie", "20 minutes", "Go forage for mushrooms and start a fire")

p new_meal

new_meal.name = "Banana and raisin bread"



new_meal.cook








# p new_meal.name
# p new_meal.prep_time
# p new_meal.instructions
# new_meal.instructions = "Buy bananas and leave them out for a week"
# p new_meal.instructions
# p new_meal

# new_meal.cook

p "----------------"
# p second_meal.name
# p second_meal.prep_time
# p second_meal.instructions
# p second_meal
# second_meal.cook


meals = [new_meal, second_meal]


meals.each do |meal|
  puts "#{meal.name.upcase}"
end
