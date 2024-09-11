class View
  # no need to assign a state (i.e no initilize method)

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} [#{task.done? ? 'X' : ' '}] #{task.description}"
    end
  end

  def get_description
    puts "What is the task description?"
    task_description = gets.chomp
    return task_description
  end

  def ask_which_task
    puts "which task do you want to mark"
    index = gets.chomp.to_i - 1
    return index
  end
end
