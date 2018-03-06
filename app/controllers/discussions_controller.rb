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
    redirect_to "/discussions"
  end

  def create
    Discussion.create :title => params["title"]
                      :content => params["content"]
                      # :user_id => #whoever login
                      # topic_id: => #new
    # create topic
    redirect_to "/discussions", notice: "Yay! Topic added!"
  end

end
