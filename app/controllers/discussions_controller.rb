class DiscussionsController < ApplicationController

  def index
    @discussions = Discussion.all.limit(100).order('created_at desc')
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
      discussion = Discussion.find_by(id: params["id"])
      discussion.title = params["title"]
      discussion.content = params["content"]
      discussion.save
      flash[:notice] = "Discussion updated successfully!"
      redirect_to "/discussions"
    end
      # if User.find_by(id: session["user_id"]).is_admin == true
      #   discussion = Discussion.find_by(id: params["id"])
      #   discussion.title = params["title"]
      #   discussion.content = params["content"]
      #   discussion.save
      #   flash[:notice] = "Discussion updated successfully!"
      #   redirect_to "/discussions"
      # else
      #   user = User.find_by(id: session["user_id"])
      #   if discussion.find_by(user_id: user.id)
      #     discussion = Discussion.find_by(id: params["id"])
      #     discussion.title = params["title"]
      #     discussion.content = params["content"]
      #     discussion.save
      #     flash[:notice] = "Discussion updated successfully!"
      #     redirect_to "/discussions"
      #   else
      #     flash[:notice] = "Sorry, you can't edit discussions launched by others."
      #     redirect_to "/discussions"
      #   end
      #   # discussion = User.find_by(id: user.id).discussions.order('date desc, start_time desc')
      # end
    # end
  end


  def destroy
    if session["user_id"].blank?
      flash[:notice] = "Please login first:D"
      redirect_to "/sessions/new"
    else
      if User.find_by(id: session["user_id"]).is_admin == true
        discussion = Discussion.find_by(id: params["id"])
        discussion.delete
        flash[:notice] = "Discussion deleted successfully!"
        redirect_to "/discussions"
      else
        user = User.find_by(id: session["user_id"])
        if discussion.find_by(user_id: user.id)
          discussion = Discussion.find_by(id: params["id"])
          discussion.delete
          flash[:notice] = "Discussion deleted successfully!"
          redirect_to "/discussions"
        else
          flash[:notice] = "Sorry, you can't delete discussions launched by others."
          redirect_to "/discussions"
        end
      end
    end
  end


  def create
    if session["user_id"].blank?
      redirect_to "/sessions/new"
    else
      Discussion.create :title => params["title"],
                        :content => params["content"]

      flash[:notice] = "Yay! Discussion added!"
      redirect_to "/discussions"
    end
  end

end
