class SessionsView

  def ask_for_something(something)
    puts "What is your #{something}"
    gets.chomp
  end

  def display(something)
    puts "#{something}!"
  end
end
