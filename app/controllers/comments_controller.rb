class CommentsController < ApplicationController

  def update
    comment = Comment.find_by(id: params["id"])
    comment.name = params["name"]
    comment.save
    redirect_to "/comments"
  end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.delete
    redirect_to "/comments"
  end

  def create
    Comment.create :name => params["name"]
    redirect_to "/comments"
  end

end
