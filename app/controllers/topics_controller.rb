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
    if session["user_id"].blank?
      flash[:notice] = "Please login first:D"
      redirect_to "/sessions/new"
    else
    topic = Topic.find_by(id: params["id"])
    # topic.name = params.require(:topic).permit(:name)
    topic.name = params[:name]
    topic.save
    flash[:notice] = "Topic updated successfully!"
    redirect_to "/"
    end
  end


  def create
    if session["user_id"].blank?
      flash[:notice] = "Sorry, adding topic failed. Please login first:D"
      redirect_to "/sessions/new"
    else
    # Topic.create(params.require(:topic).permit(:name))
    Topic.create :name => params["name"]
    flash[:notice] = "Yay! Topic created successfully!"
    redirect_to "/"
    end
  end


  def destroy
    if !(session["user_id"].blank?) and (User.find_by(id: session["user_id"]).is_admin == true)
      topic = Topic.find_by(id: params["id"])
      topic.delete
    end
    redirect_to "/"
  end

end
