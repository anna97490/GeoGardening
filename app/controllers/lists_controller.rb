class ListsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @lists = List.all
  end

  def new
    @list = List.new(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.location = @current_user.user_location if params[:location].blank?
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list.destroy
    redirect_to lists_url, notice: 'List was successfully deleted'
  end

  private

  def list_params
    params.require(:list).permit(:name, :location)
  end
end
