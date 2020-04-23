class Organizer::OrgUsersController < Organizer::Base
  def show
    @org_user = OrgUser.find(params[:id])
  end

  def new
    @org_user = OrgUser.new
  end
end
