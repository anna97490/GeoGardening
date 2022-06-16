class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @all_plants = Plant.new
    if params_form[:name].blank? && params_form[:plant_type].blank?
      @plants = Plant.all
    elsif params_form[:name].blank?
      @plants = Plant.where("plant_type LIKE ?", "%#{params_form[:plant_type]}%")
    elsif params_form[:plant_type].blank?
      @plants = Plant.where("name LIKE ?", "%#{params_form[:name]}%")
    else
      @plants = Plant.where("name LIKE ? AND plant_type LIKE ?", "%#{params_form[:name]}%", "%#{params_form[:plant_type]}%")
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  private

  def params_form
    params.require(:plant).permit(:name, :plant_type)
  end
end
