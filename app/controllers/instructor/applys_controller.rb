class Instructor::ApplysController < Instructor::Base
  def new
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @apply = Apply.new
    @apply.event_id = params[:event_id]
    @apply.ir_user_id = ir_current_user.id
    @apply.flag = true
    if @apply.save
      flash[:success] = "イベントに応募しました"
      redirect_to instructor_applys_path
    else
      flash[:danger] = "応募に失敗しました"
      redirect_to instructor_apply_path
    end
  end

end
