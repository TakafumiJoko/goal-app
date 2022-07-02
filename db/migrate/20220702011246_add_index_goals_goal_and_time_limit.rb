class AddIndexGoalsGoalAndTimeLimit < ActiveRecord::Migration[6.0]
  def change
    add_index :goals, [:goal, :time_limit]
  end
end
