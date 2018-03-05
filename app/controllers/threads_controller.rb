# class ThreadsController < ApplicationController
#
#   def index
#   end
#
#   def update
#     thread = Thread.find_by(id: params["id"])
#     thread.comment_count = # Comment.count(where(thread_id: #thread))
#     thread.save
#     redirect_to "/threads"
#   end
#
# # how to update the comment_count every time comment changes??
#
#   def create
#     Thread.create :comment_count => 0
#     redirect_to "/threads"
#   end
#
# end
