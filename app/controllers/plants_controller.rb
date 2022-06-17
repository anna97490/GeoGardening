class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @all_plants = Plant.new
    if params[:plant]
      if params[:plant][:name].blank? && params[:plant][:plant_type].blank?
        @plants = Plant.all
      elsif params[:plant][:name].blank?
        @plants = Plant.where("plant_type LIKE ?", "%#{params[:plant][:plant_type]}%")
      elsif params[:plant][:plant_type].blank?
        @plants = Plant.where("name LIKE ?", "%#{params[:plant][:name]}%")
      else
        @plants = Plant.where("name LIKE ? AND plant_type LIKE ?", "%#{params[:plant][:name]}%", "%#{params[:plant][:plant_type]}%")
      end
    else
      @plants = Plant.all
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
