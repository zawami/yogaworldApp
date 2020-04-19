class Instructor::IrUsersController < Instructor::Base
  
  def show
    @ir_user = IrUser.find(params[:id])
  end
  
  def new
  end
end
