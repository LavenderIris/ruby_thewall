class PostsController < ApplicationController
  def create
    p = Message.new(message: params[:message], user_id: session[:user_id])
    p.save
    redirect_to '/wall'
  end


  def create_comment
    c = Comment.new(comment: params[:comment], user_id: session[:user_id], message_id:params[:message_id])
    c.save
    redirect_to '/wall'
  end

end
