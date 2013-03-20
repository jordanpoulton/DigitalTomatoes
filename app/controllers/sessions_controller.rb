class SessionsController < ApplicationController

  def new
    # No need to instantiate an object - done
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      current_user
      redirect_to root_path
    else
      flash[:notice] = "Details don't match our Database records"
      redirect_to new_session_path
    end
  end


  def destroy
    @current_user = session[:user_id] = nil
    redirect_to root_path
    # NB - No logout button created yet
  end


end
