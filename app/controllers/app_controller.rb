class TodoController

  def display_all_tasks
    task.find(:all)
  end

  def display_all_completed
    task.find(complete)
  end

  def display_all_uncompleted
    task.find(uncompleted)
  end

  def add_task(text)
    task.create(:description => 'text')
  end

  def delete_task(task_id)
    task.find(task_id)
  end

  def mark_task_as_completed

  end

  def search

  end

end

