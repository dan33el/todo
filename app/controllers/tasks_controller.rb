class TasksController < ApplicationController
  def index
    if params[:search].present? && params[:search][:date].present?
      @records = Task.where(date: params[:search][:date])
    else
      @records = Task.all #where(date: Date.current)
    end

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task].permit!)
    if @task.save
      flash[:notice] = 'Задача успешно создана'
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    Task.find(params[:id]).destroy
    flash[:alert] = 'Задача удалена'
    redirect_to tasks_url
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task].permit!)
      flash[:notice] = 'Задача успешно обновлена'
      redirect_to task_url(params[:id])
    else
      render :edit
    end
  end

  def toggle_completed
    Task.find(params[:id]).toggle!(:completed)
    redirect_to tasks_url
  end
end
