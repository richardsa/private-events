class EventsController < ApplicationController
before_action :logged_in_user, only: [:new, :create]
  def new
  
    @event = current_user.events.build
  
    #@event = Event.new
  end
  
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
    @user = current_user
  end
  
  def create
    @event = current_user.events.build(event_params)
    if @event.save
       redirect_to events_path
    else
      render 'new'
    end
   
  end
  
  
    private
   # Confirms a logged-in user.
   def logged_in_user
     unless logged_in?
       flash[:danger] = "Please log in."
       redirect_to login_url
     end
   end
    
   
   def event_params
      params.require(:event).permit(:date, :location, :description)  
   end
end
