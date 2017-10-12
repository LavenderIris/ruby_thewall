class UsersController < ApplicationController
  def registration
    render 'users/registration.html.erb'
  end

  def signin
    @user = User.find_by username: params[:user][:username]
    if (@user) 
      flash[:notice] = ['User successfully created']
    else 
      @user = User.new(username: params[:user][:username])
      flash[:notice] = @user.errors.full_messages
      @user.save    
    end
    session[:username] = @user.username
    session[:user_id] = @user.id
    redirect_to '/wall'
  end

  def wall
    @posts = Message.all.order(created_at: :desc)
    render 'users/wall.html.erb'
  end

  def logout
    reset_session
    redirect_to ''
  end
end

