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



  private

  def list_parameter
    params.require(:list).permit(:name)
  end

end
