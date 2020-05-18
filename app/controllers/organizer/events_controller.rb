class Organizer::EventsController < Organizer::Base
  def index
    @events = Event.where(org_user_id: org_current_user.id) 
  end

  def new
    @event = Event.new
  end

  def create
    @event = org_current_user.events.new(event_params)
    if @event.save
      flash[:success] = 'Create Event'
      redirect_to organizer_events_url
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def confirm
    @event = Event.find(params[:id])
    @applys = Apply.where(event_id: @event.id)
  end
end

private

def event_params
  params.require(:event).permit(:name, :date, :place, :term, :fee, :explanation, :comment, :comment2)
end
