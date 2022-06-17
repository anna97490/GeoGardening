class PlantListsController < ApplicationController
  def create
    @plant_list = PlantList.new(list_id: params[:list_id], plant_id: params[:plant_id]) if params[:plant_id].present?
    redirect_to plants_path, notice: "Congratulations! You have added a plant to the list. " if @plant_list.save
  end

  def destroy
    @plant_list = PlantList.find(params[:id])
    @plant_list.destroy
    redirect_back(fallback_location: list_path)
  end
end
