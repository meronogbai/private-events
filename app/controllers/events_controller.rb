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
    event.creator_id = session[:user_id]
    if event.save
      flash[:success] = 'You have created a new event!'
      redirect_to event_path(event)
    else
      flash[:alert] = "You couldn't create a new event."
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :description, :event_date)
  end
end
