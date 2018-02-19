class DiscussionsController < ApplicationController

  def update
    discussion = Discussion.find_by(id: params["id"])
    discussion.name = params["name"]
    discussion.save
    redirect_to "/discussions"
  end

  def destroy
    discussion = Discussion.find_by(id: params["id"])
    discussion.delete
    redirect_to "/discussions"
  end

  def create
    Discussion.create :name => params["name"]
    redirect_to "/discussions"
  end

end
