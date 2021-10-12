class TasksController < ApplicationController

    def index 
        @tasks = Task.all 
        render json: @tasks 
    end 

    def show
        render json: @tasks 
    end 

    def create
        @task = Task.new(task_params) 
    end 

    def update 
    end 

    def destroy 
        @task.destroy
    end 

    private 

    def task_params
        params.require(:task).permit(:text, :day, :reminder) 
    end 
end
