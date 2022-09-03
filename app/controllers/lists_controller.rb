class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_parameter)
    if @list.save
      redirect_to lists_path
    else
      redirect_to root_path
    end
  end

  def show
    @list = List.find(params[:id])
    @task = Task.new
    @tasks = @list.tasks
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_parameter)
      redirect_to list_path
    else
      render 'edit'
    end
  end

  private

  def list_parameter
    params.require(:list).permit(:name)
  end

end
