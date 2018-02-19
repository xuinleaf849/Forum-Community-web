class UsersController < ApplicationController

  def update
    user = User.find_by(id: params["id"])
    # user.email = params["email"]
    user.nickname = params["nickname"]
    user.password = params["password"]
    user.save
    redirect_to "/users"
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def create
    User.create :email => params["email"], :nickname => params["nickname"], :password => params["password"]
    redirect_to "/users"
  end

end
