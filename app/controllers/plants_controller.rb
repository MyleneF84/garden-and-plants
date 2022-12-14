class PlantsController < ApplicationController

  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :origin, :garden_id)
  end
end
