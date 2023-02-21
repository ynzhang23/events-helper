class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    # event_id is from the parent 'events' resources
    event = Event.find(params[event_id])
    user = current_user
    event.attendances.create(user: user)
  end

  def destroy
  end
end