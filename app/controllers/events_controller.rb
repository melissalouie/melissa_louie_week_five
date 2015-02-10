class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def show

  end

  def new
    @location = Location.find(params[:location_id])
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @location = Location.find(params[:location_id])
    @event.location_id = params[:location_id]
    @event.save

    if @event.save
      redirect_to location_path(@location)
    else
      render @location
    end
  end

  def edit

  end

  def update

    @event.location_id = Location.find(params[:location_id ])
    @event.save

    if @event.update(event_params)
      redirect_to location_path(@location)

    else
      redirect_to edit_location_event_path(@location, @event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to locations_path
  end
private
  def set_event
    @event = Event.find(params[:id])
    @location = Location.find(params[:location_id])
  end

  def event_params
    params.require(:event).permit(:description, :date, :location_id, :requires_id)
  end
end
