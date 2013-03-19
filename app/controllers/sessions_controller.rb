class SessionsController < ApplicationController

  def new

  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:current_user_id] = user.id

      redirect_to root_url
    else
      flash[:notice] = "Details don't match our Database records"
      redirect_to new_session_path
    end
  end


  def delete
    # sign out
  end


end
