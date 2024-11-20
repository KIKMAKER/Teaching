# TODO: Define your View class here, to display elements to the user and ask them for their input
class View

  def diplay_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name}, #{recipe.description}"
    end
  end

  def ask_for_name
    puts "What is the recipe called"
    return gets.chomp
  end

  def ask_for_description
    puts "Describe the recipe..."
    return gets.chomp
  end

  def ask_for_index
    puts "Which recipe (give a number)"
    gets.chomp.to_i - 1
  end

end
