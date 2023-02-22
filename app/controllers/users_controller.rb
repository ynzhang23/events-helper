class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @hosted_events = @user.hosted_events
    @attend_events = @user.attend_events - @hosted_events
  end
end
