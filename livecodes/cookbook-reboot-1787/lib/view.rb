# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  def ask_for(something)
    puts "What is the recipe #{something}?"
    gets.chomp
  end

  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end
end
