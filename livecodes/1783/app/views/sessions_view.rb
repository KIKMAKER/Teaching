class SessionsView

  def ask_for(something)
    puts "What is your #{something}"
    gets.chomp
  end

  def successful_login
    puts "You are now logged in"
  end

  def unsucessful_login
    puts "Incorrect unsername or password, please try again"
  end

end
