class Customer::UsersController < Customer::Base
  def show
    @user = User.find(params[:id])
  end
  
  def new
  end
end
