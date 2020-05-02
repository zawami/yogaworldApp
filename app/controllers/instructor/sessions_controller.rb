class Instructor::SessionsController < Instructor::Base
  def new
  end

  def create
    ir_user = IrUser.find_by(email: params[:session][:email].downcase)
    if ir_user && ir_user.authenticate(params[:session][:password])
      log_in ir_user
      redirect_to instructor_ir_user_url(ir_user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to instructor_root_path
  end
end
