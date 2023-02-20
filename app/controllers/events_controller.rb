class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @events = Event.all
  end

  def show
    @events = Event.find(params[:id])
  end

  def new
    @user = current_user
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.hosted_events.build(event_params)
    if @event.save
      redirect_to root_url
    else
      flash.now[:errors] = @event.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :description, :location, :date, :host_id)
  end
end
