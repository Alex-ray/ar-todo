class TodoController < ActiveRecord::Base

  def display_all_tasks
    Task.find(:all)
  end

  def display_all_completed
    Task.order.select(complete)
  end

  def display_all_uncompleted
    Task.order.select(incomplete)
  end

  def add_task(text)
    Task.create(:description => 'text')
  end

  def delete_task(task_id)
    Task.find(task_id)
  end

  def mark_task_as_completed
    # how do we mark a task as completed
  end

  def search

  end
end

x = TodoController.new
x.display_all_tasks
