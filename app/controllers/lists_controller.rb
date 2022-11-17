class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @lists, notice: 'List created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
