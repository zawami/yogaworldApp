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

  def index2
    @event = Event.find(params[:id])
    @applys = Apply.where(event_id: @event.id)
  end

  def confirm
    @event = Event.find(params[:event_id])
    @apply = Apply.find(params[:apply_id])    
    if @apply.update_attribute(:c_flag,true)
      @event.update_attribute(:disclosed_page,true)
    flash[:success] = "承認しました"
    redirect_to organizer_confirm_path(@event)
    else
      render index2
    end
  end

end

private

def event_params
  params.require(:event).permit(:name, :date, :place, :term, :fee, :explanation, :comment, :comment2)
end
