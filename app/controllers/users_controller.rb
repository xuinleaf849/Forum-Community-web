class UsersController < ApplicationController
  def edit
    if session["user_id"].blank?
      redirect_to "/users/:id"
    else
      @user = User.find_by(id: session["user_id"])
      render "edit"
    end
  end

  def show
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Try again!"
    end
  end

  def index
    if !(session["user_id"].blank?) and (User.find_by(id: session["user_id"]).is_admin == true)
      render "index"

    else
      redirect_to "/sessions/new"
    end
  end


  def new # /users/new
    @user = User.new
  end

  def update
    if session["user_id"].blank?
    redirect_to "/users/:id"
    else
      @user = User.find_by(id: session["user_id"])
      @user.password = params["password"]
      @user.email = params["email"]
      @user.save
      if @user.save
        flash[:success] = "Successfully updated"
        redirect_to "/"
      else
        flash[:danger] = @user.errors.full_messages
        redirect_to "/users/new"
      end
    end
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def create
    @user = User.new
    @user.email = params["email"]
    @user.username = params["username"]
    @user.password = params["password"]
    # if @user.errors.any?
    if @user.save
      redirect_to "/"
      flash[:notice] =  "Thanks for joining the MPCS community, please login!"
    else
      flash[:danger] = @user.errors.full_messages
      render 'new'
    end
  end

end
