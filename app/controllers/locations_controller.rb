class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]


  def index
    @locations = Location.all
  end

  def new
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :address, :zip_code)
  end

end
