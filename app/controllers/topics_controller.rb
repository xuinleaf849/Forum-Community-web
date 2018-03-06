class TopicsController < ApplicationController

  def index
    @topics = Topic.all.limit(100).order('created_at desc')
  end

  # def update
  #   topic = Topic.find_by(id: params["id"])
  #   # topic.comment_count = # Comment.count(where(topic_id: #topic))
  #   topic.save
  #   redirect_to "/"
  # end

# how to update the comment_count every time comment changes??

  def create
    Topic.create :name => params["name"]
    redirect_to "/"
  end

  def destroy
    topic = Topic.find_by(id: params["id"])
    topic.delete
    redirect_to "/"
  end

end
