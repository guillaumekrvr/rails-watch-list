class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(params[:list])
    @lists.save

    redirect_to lists_path(@lists)
  end

  private

  def lists_params
    params.require(:lists).permit(:name, :created_at, :updated_at)
  end
end
