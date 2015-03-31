class EventsController < ApplicationController
  #before_action :logged_in_user, only: [:create, :destroy]
  
  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to users_path
    end
    
  end
  
  def destroy
  end

  private
  
    def event_params
      params.require(:event).permit(:description)
    end
end
