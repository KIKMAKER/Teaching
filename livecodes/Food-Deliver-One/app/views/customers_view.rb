class CustomersView

  def display_list(list)
    list.each_with_index do |item, index|
      puts "#{index + 1} - #{item.name} - #{item.address}"
    end
  end

  def ask_for(something)
    puts "What is the #{something}?"
    gets.chomp
  end
end
