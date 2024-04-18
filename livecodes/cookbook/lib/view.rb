class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(something)
    puts "What it is the recipe #{something}?"
    gets.chomp
  end

  # def ask_for_index
  #   puts "hat is the recipe index?"
  #   gets.chomp.to_i - 1
  # end
end
