class Organizer::OrgUsersController < Organizer::Base
  def show
    @org_user = OrgUser.find(params[:id])
  end

  def new
  end
end
