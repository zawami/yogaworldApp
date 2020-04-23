class Instructor::IrUsersController < Instructor::Base
  
  def show
    @ir_user = IrUser.find(params[:id])
  end
  
  def new
    @ir_user = IrUser.new
  end

  def create
    @ir_user = IrUser.new(ir_user_params)
    if @ir_user.save
      flash[:success] = "Welcomt to the YOGAWORLD!"
      redirect_to instructor_ir_user_url(@ir_user)
    else
      redirect_to instructor_root
    end
  end

  private

  def ir_user_params
    params.require(:ir_user).permit(:name,:email,:password,:password_confirmation)
  end
end
