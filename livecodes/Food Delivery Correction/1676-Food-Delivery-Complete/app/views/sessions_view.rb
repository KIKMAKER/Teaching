class SessionsView

  def ask_for(something)
    puts "What is your #{something}?"
    gets.chomp
  end

  def signed_in
    puts "You are signed in!"
    puts ":)"
  end

  def wrong_credentials
    puts "Sorry, your username or password is incorrect."
    puts "Please try again."
  end
end
