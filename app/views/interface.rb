class Interface
  def self.error_messages
    puts "Error"
    puts "List of commands available:"
    puts "ruby todo.rb list"
    puts "ruby todo.rb complete <task_id>"
    puts "ruby todo.rb delete <task_id>"
    puts "ruby todo.rb add <task_name>"
  end

  def self.show_tasks(task_list)

    task_list.each do |task|
      puts "#{task.id}. #{task.completed_at ? '[X]' : '[ ]'} | #{task.description}"
    end

  end
end
