class TaskView

  def ask_for_description
    puts "What is the task description?"
    answer = gets.chomp
    return answer
  end

  def display_list(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. [#{task.done? ? 'X' : ' '}] #{task.description}"
    end
  end

  def ask_for_index
    puts "Which task did you do?"
    gets.chomp.to_i - 1
  end
end
