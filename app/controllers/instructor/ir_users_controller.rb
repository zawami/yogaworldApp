class Instructor::IrUsersController < Instructor::Base
  before_action :logged_in_user, only: [:edit,:update]
  before_action :correct_user, only: [:edit,:update]
 
  def show
    @ir_user = IrUser.find(params[:id])
  end
  
  def new
    @ir_user = IrUser.new
  end

  def create
    @ir_user = IrUser.new(ir_user_params)
    if @ir_user.save
      log_in @ir_user
      flash[:success] = "Welcomt to the YOGAWORLD!"
      redirect_to instructor_ir_user_url(@ir_user)
    else
      render 'new'
    end
  end

  def edit
    @ir_user = IrUser.find(params[:id])
  end

  def update
    @ir_user = IrUser.find(params[:id])
    if @ir_user.update_attributes(ir_user_params)
      flash[:success] = "Profile updated"
      redirect_to instructor_ir_user_url(@ir_user)
    else
      render 'edit'
    end
  end
  
  private

  def ir_user_params
    params.require(:ir_user).permit(:name,:email,:password,:password_confirmation,:introduction,:capabilities,:career,:image)
  end

  def logged_in_user
    unless ir_logged_in?
      flash[:danger] = "Please log in."
      redirect_to instructor_login_url
    end
  end

  def correct_user
    @ir_user = IrUser.find(params[:id])
    redirect_to(instructor_root_url) unless ir_current_user?(@ir_user)
  end
end
