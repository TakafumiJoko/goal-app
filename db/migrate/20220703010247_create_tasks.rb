class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.date :time_limit, null: false

      t.timestamps
    end
  end
end
