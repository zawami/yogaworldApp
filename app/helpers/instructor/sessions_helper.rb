module Instructor::SessionsHelper
  def log_in(ir_user)
    session[:ir_user_id] = ir_user.id
  end

  def ir_current_user
    if session[:ir_user_id]
      @ir_current_user ||= IrUser.find_by(id: session[:ir_user_id])
    end
  end

  def ir_logged_in?
    !ir_current_user.nil?
  end

  def log_out
    session.delete(:ir_user_id)
    @ir_current_user = nil
  end
end
