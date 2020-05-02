module Organizer::SessionsHelper
  def log_in(org_user)
    session[:org_user_id] = org_user.id
  end

  def org_current_user
    if session[:org_user_id]
      @org_current_user ||= OrgUser.find_by(id: session[:org_user_id])
    end
  end

  def org_logged_in?
    !org_current_user.nil?
  end

  def log_out
    session.delete(:org_user_id)
    @org_current_user = nil
  end
end
