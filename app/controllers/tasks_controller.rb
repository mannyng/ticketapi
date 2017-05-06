class TasksController < ApplicationController
  skip_before_action :authenticate_user_from_token!, raise: false

  def index
   tasks = Task.all
   render json: tasks
 end

  def show
     task = Task.find_by_card_id(params[:card_id])
     render json: task
  end 

  def create 
    task = Task.new(task_params)
     if task.save!
      render json: task
    end
 end
    def update
     task = Task.find(params[:card_id]) 
     task = Task.update(task_params)
     render json: task
   end
 
 private

  def task_params
    params.require(:task).permit(:name, :done, :card_id)
  end

end
