class Organizer::SessionsController < Organizer::Base
  def new
  end

  def create
    org_user = OrgUser.find_by(email: params[:session][:email].downcase)
    if org_user && org_user.authenticate(params[:session][:password])
      log_in org_user
      redirect_to organizer_org_user_url(org_user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to organizer_root_path
  end
end
