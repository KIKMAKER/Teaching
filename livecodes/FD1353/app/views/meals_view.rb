class MealsView

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} for R#{meal.price}"
    end
  end

  def ask_for(something)
    puts "what is the meal #{something}?"
    gets.chomp
  end
end
