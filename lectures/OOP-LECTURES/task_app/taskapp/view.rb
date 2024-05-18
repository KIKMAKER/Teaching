# JOB = to puts and gets.chomp

class View

  def get_task_title
    puts "What is the task called"
    return gets.chomp
  end

  def get_task_description
    puts "What is the task description"
    return gets.chomp
  end

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - [ #{task.completed? ? "X": " "}] #{task.title}"
    end
  end

  def get_task_index
    puts "Which number task have you done?"
    gets.chomp.to_i - 1
  end

end
