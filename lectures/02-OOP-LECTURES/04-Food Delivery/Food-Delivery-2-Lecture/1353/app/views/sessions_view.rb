class SessionsView

  def ask_for(something)
    puts "What is your #{something}?"
    gets.chomp
  end

  def welcome_message
    puts "You have successfully logged in"
  end

  def wrong_credentials
    puts "Sorry, incorrect username or password"
  end
end
