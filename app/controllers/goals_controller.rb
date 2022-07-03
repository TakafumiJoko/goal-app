class GoalsController < ApplicationController
  def new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = params[:user_id]   
    @goal.save
    redirect_to "/user/#{params[:user_id]}"
  end

  private 

    def goal_params
      params.require(:goal).permit(:goal, :time_limit, tasks_attributes: [:id, :task, :time_limit])
    end
end
