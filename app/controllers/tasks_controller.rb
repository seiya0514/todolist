class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_parameter)
    if @task.save
      redirect_to "/lists/#{@task.list.id}"
    else
      redirect_to "/lists/#{@task.list.id}"
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    if @task.destroy
      redirect_to "/lists/#{@task.list.id}"
    else
      redirect_to "/lists/#{@task.list.id}"
    end
  end

  private

  def task_parameter
    params.require(:task).permit(:title, :content, :start_time)
  end

end
