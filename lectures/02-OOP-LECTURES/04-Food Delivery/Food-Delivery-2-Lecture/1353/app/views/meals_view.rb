class MealsView
  def display_list(meals)
    puts "Kiki's Delivery Service"
    puts "~~~~~~~ MEALS ~~~~~~~"
    meals.each_with_index { |meal, index| puts "#{index + 1}. #{meal.name} - R#{meal.price}\n ~~~~~~~~~~ \n" }
  end

  def ask_for_name
    puts "What is the meal name?"
    gets.chomp
  end

  def ask_for_price
    puts "What is the new meal price?"
    gets.chomp.to_i
  end

  def ask_user(stuff)
    puts "#{stuff}?"
    gets.chomp
  end
end
