class EventsController < ApplicationController
  def index; end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    if event.save
      flash[:success] = 'You have created a new event!'
      redirect_to event_path(event)
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :description, :event_date)
  end
end
