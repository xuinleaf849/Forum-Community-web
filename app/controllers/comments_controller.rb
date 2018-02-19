class CommentsController < ApplicationController

  # def update
  #   comment = Comment.find_by(id: params["id"])
  #   comment.message = params["message"]
  #   comment.save
  #   redirect_to "/threads"
  # end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.delete
    redirect_to "/discussions"
  end

  def create
    Comment.create :message => params["message"]
                   # :user_id => #whoever login
                   # :thread_id: => #the one corresponds to the discussion
    redirect_to "/discussions"
  end

end
