class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @all_plants = Plant.new
    if params[:name].blank? && params[:plant_type].blank?
      # Temporary change in order to not show all 1650 plants in index
      @plants = Plant.take(10)
    elsif params[:name].blank?
      @plants = Plant.where("plant_type LIKE ?", "%#{params[:plant_type]}%")
    elsif params[:plant_type].blank?
      @plants = Plant.where("name LIKE ?", "%#{params[:name]}%")
    else
      @plants = Plant.where("name LIKE ? AND plant_type LIKE ?", "%#{params[:name]}%", "%#{params[:plant_type]}%")
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
