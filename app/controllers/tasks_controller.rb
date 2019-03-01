class TasksController < ApplicationController

  def index         # GET /restaurants
    @tasks = Task.all
  end

  def show          # GET /restaurants/:id
    @task = Task.find(params[:id])
  end

  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
    @task = Task.new(params[:task])
    @task.save
     # Will raise ActiveModel::ForbiddenAttributesError
     redirect_to task_path(@task)
  end

  def edit          # GET /restaurants/:id/edit
    @task = Task.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @task = Task.find(params[:id])
    @task.update(params[:task])
    redirect_to task_path(@task)
  end

  def destroy       # DELETE /restaurants/:id
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tesks_path
  end

end

