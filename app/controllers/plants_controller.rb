class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @all_plants = Plant.new
    if params[:plant]
      if params[:plant][:name].blank? && params[:plant][:plant_type].blank? && params[:plant][:location].blank?
        @plants = Plant.order(Arel.sql('RANDOM()')).take(50)
      elsif params[:plant][:name].blank? && params[:plant][:location].blank?
        @plants = Plant.where("plant_type ILIKE ?", "%#{params[:plant][:plant_type]}%").order('name ASC')
      elsif params[:plant][:plant_type].blank? && params[:plant][:location].blank?
        @plants = Plant.where("name ILIKE ?", "%#{params[:plant][:name]}%").order('name ASC')
      # elsif params[:plant][:location] == "Nice" && params[:plant][:plant_type].blank? && params[:plant][:name].blank?
      elsif params[:plant][:name].present? && params[:plant][:plant_type].present? && params[:plant][:location].blank?
        @plants = Plant.where("name ILIKE ? AND plant_type ILIKE ?", "%#{params[:plant][:name]}%", "%#{params[:plant][:plant_type]}%").order('name ASC')
      else
        location = Location.where("name ILIKE ?", "%#{params[:plant][:location]}%").first
        if location.nil?
          redirect_to plants_path, notice: "Malheureusement nous n'avons pas de données pour cette ville."
        else
          @plants = []
          filtered_plants = []
          Plant.all.each do |plant|
            filtered_plants << plant if plant.zone.first <= location.zone.last
          end

          if params[:plant][:plant_type].blank? && params[:plant][:name].blank?
            @plants = filtered_plants
          elsif params[:plant][:name].blank?
            filtered_plants.map do |plant|
              @plants << plant if plant.plant_type == params[:plant][:plant_type]
            end
          elsif params[:plant][:category].blank?
            plants = Plant.where("name ILIKE ?", "%#{params[:plant][:name]}%").order('name ASC')
            plants.each do |plant|
              @plants << plant if plant.zone.first <= location.zone.last
            end
            @plants
          end
        end
      end
    else
      @plants = Plant.order(Arel.sql('RANDOM()')).take(50)
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
