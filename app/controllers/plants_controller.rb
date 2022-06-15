class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
