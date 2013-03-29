class CreateTasks < ActiveRecord::Base
  def change
    create_table :tasks do |t|
      t.string :description
      t.date   :created_at, :updated_at, :completed_at
    end
  end
end