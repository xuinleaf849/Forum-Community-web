class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/topics"
  end

  def create
    # @user = User.find_by(params.require(:user).permit(:username))
    @user = User.find_by(username:params["username"])
    if @user != nil
      if @user.authenticate(params["password"])
        session[:user_id] = @user.id
        flash[:notice] = "Welcome back, #{@user.username}"
        redirect_to "/topics"
      else
        flash[:notice] = "Incorrect password, please try again!"
        redirect_to "/sessions/new"
      end
    else
      flash[:notice] = "User doesn't exist!"
      redirect_to "/sessions/new"
    end
  end

end
