class CommentsController < ApplicationController

  # def update
  #   comment = Comment.find_by(id: params["id"])
  #   comment.message = params["message"]
  #   comment.save
  #   redirect_to "/topics"
  # end

  def destroy
    comment = Comment.find_by(id: params["id"])
    comment.delete
    redirect_to "/comments"
  end

  def create
    Comment.create :message => params["message"]
                   # :user_id => #whoever login
                   # :topic_id: => #the one corresponds to the discussion
    redirect_to "/comments", notice: "Commented successfully!"
  end

end
