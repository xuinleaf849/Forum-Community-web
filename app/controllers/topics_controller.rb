class TopicsController < ApplicationController

  def index
    @topics = Topic.all.limit(100).order('created_at desc')
  end


  def edit
    if !(session["user_id"].blank?) and (User.find_by(id: session["user_id"]).is_admin == true)
      render "edit"
    else
      redirect_to "/"
    end
  end


  def update
    topic = Topic.find_by(id: params["id"])
    topic.name = params.require(:topic).permit(:name)
    topic.save
    redirect_to "/"
  end



  def create
    Topic.create(params.require(:topic).permit(:name))
    # Topic.create :name => params["name"]
    redirect_to "/"
  end

  def destroy
    if !(session["user_id"].blank?) and (User.find_by(id: session["user_id"]).is_admin == true)
      topic = Topic.find_by(id: params["id"])
      topic.delete
    end
    redirect_to "/"
  end

end
