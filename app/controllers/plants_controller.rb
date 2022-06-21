class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @all_plants = Plant.new
    if params[:plant]
      if params[:plant][:name].blank? && params[:plant][:plant_type].blank? && params[:plant][:location].blank?
        # Temporary change in o[:plant]der to not show all 1650 plants in index
        @plants = Plant.take(50)
      elsif params[:plant][:plant_type].present? && params[:plant][:name].blank? && params[:plant][:location].blank?
        @plants = Plant.where("plant_type ILIKE ?", "%#{params[:plant][:plant_type]}%").order('name ASC')
      elsif params[:plant][:name].present? && params[:plant][:plant_type].blank? && params[:plant][:location].blank?
        @plants = Plant.where("name ILIKE ?", "%#{params[:plant][:name]}%").order('name ASC')
      # elsif params[:plant][:location] == "Nice" && params[:plant][:plant_type].blank? && params[:plant][:name].blank?
      elsif params[:plant][:location].present? && params[:plant][:plant_type].blank? && params[:plant][:name].blank?
        location = Location.where("name ILIKE ?", "%#{params[:plant][:location]}%").first
        if location == nil
          redirect_to plants_path, notice: "Malheuresement nous n'avos pas de donnés pour votre ville."
        else
          @plants = []
          Plant.all.each do |plant|
            if plant.zone.first <= location.zone.last
              @plants << plant
            end
          end
          # raise
        end
      else
        @plants = Plant.where("name ILIKE ? AND plant_type ILIKE ?", "%#{params[:plant][:name]}%", "%#{params[:plant][:plant_type]}%").order('name ASC')
      end
    else
      @plants = Plant.take(10)
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
