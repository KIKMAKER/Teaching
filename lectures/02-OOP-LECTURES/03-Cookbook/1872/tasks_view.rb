class TasksView
  # does all the puts and gets (interacting with the terminal)
  def display_list(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. [#{task.done? ? 'X' : ' '}] #{task.description}"
    end
  end

  def ask_for_description
    puts "What is the task description?"
    return gets.chomp
  end

  def ask_for_index
    puts "Which task do you want to mark? (Pick a number)"
    gets.chomp.to_i - 1
  end

end
