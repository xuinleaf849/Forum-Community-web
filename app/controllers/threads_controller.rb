class ThreadsController < ApplicationController

  def index
  end

  def update
    thread = Thread.find_by(id: params["id"])
    thread.name = params["name"]
    thread.save
    redirect_to "/threads"
  end

  def destroy
    thread = Thread.find_by(id: params["id"])
    thread.delete
    redirect_to "/threads"
  end

  def create
    Thread.create :name => params["name"]
    redirect_to "/threads"
  end

end
