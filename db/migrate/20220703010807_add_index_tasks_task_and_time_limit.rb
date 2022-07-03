class AddIndexTasksTaskAndTimeLimit < ActiveRecord::Migration[6.0]
  def change
    add_index :tasks, [:task, :time_limit]
  end
end
