class DiscussionsController < ApplicationController

  def update
    discussion = Discussion.find_by(id: params["id"])
    discussion.title = params["title"]
    discussion.content = params["content"]
    discussion.save
    redirect_to "/discussions"
  end

  def destroy
    discussion = Discussion.find_by(id: params["id"])
    discussion.delete
    # I need to thread.delete here, how to call object from other class?
    redirect_to "/discussions"
  end

  def create
    Discussion.create :title => params["title"]
                      :content => params["content"]
                      :user_id => #whoever login
                      thread_id: => #new
    # create thread
    redirect_to "/discussions"
  end

end
