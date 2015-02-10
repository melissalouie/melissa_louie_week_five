class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update]

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    redirect_to locations_path
  end

  def edit
  end

  def update
    @location = Location.find(params[:id])
    if
      @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end


  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :address, :zip_code)
  end

end
