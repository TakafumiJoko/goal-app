class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :goal, null: false 
      t.date :time_limit, null: false

      t.timestamps
    end
  end
end
