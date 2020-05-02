class Organizer::OrgUsersController < Organizer::Base
  def show
    @org_user = OrgUser.find(params[:id])
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

  private

    def org_user_params
      params.require(:org_user).permit(:name,:email,:password,
                      :password_confirmation)
    end

end
