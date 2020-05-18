# before_action :logged_in_user, only: [:edit,:update]
# before_action :correct_user, only: [:edit,:update]

class Organizer::OrgUsersController < Organizer::Base
  def show
    @org_user = OrgUser.find(params[:id])
    # @events =  @org_user.events.paginate(page: params[:page])
  end

  def new
    @org_user = OrgUser.new
  end

  def create
    @org_user = OrgUser.new(org_user_params)
    if @org_user.save
      log_in @org_user
      flash[:success] = "Welcomt to the YOGAWORLD!"
      redirect_to organizer_org_user_url(@org_user)
    else
      render 'new'
    end
  end

  def edit
    @org_user = OrgUser.find(params[:id])
  end

  def update
    @org_user = OrgUser.find(params[:id])
    if @org_user.update_attributes(org_user_params)
      flash[:success] = "Profile updated"
      redirect_to organizer_org_user_url(@org_user)
    else
      render 'edit'
    end
  end

  private

    def org_user_params
      params.require(:org_user).permit(:name,:email,:password,
                      :password_confirmation,:introduction,:comment)
    end

    def logged_in_user
      unless org_logged_in?
        flash[:danger] = "Please log in."
        redirect_to organizer_login_url
      end
    end

    def correct_user
      @org_user = OrgUser.find(params[:id])
      redirect_to(organizer_root_url) unless org_current_user?(@org_user)
    end

end
