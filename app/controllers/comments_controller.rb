class CommentsController < ApplicationController

  # def update
  #   comment = Comment.find_by(id: params["id"])
  #   comment.message = params["message"]
  #   comment.save
  #   redirect_to "/topics"
  # end
  def index
    @comments = Comment.all.limit(100).order('created_at desc')
  end

  def destroy
    if session["user_id"].blank?
      flash[:notice] = "Please login first:D"
      redirect_to "/sessions/new"
    else
    comment = Comment.find_by(id: params["id"])
    comment.delete
    redirect_to "/comments"
    end
  end

  def create
    if session["user_id"].blank?
      flash[:notice] = "Please login first:D"
      redirect_to "/sessions/new"
    else
      c = Comment.new :message => params["message"],
                    :user_id => session["user_id"],
                    :discussion_id => params["discussion_id"]
      if c.save
        flash[:notice] = "Commented successfully!"
        redirect_to "/comments"
      else
        flash[:notice] = "Adding comment failed!"
        redirect_to "/comments"
      end
    end
  end

end
