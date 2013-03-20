class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_genres

  helper_method :current_user?

  def current_user?
    !!current_user
  end

  def current_user
    @current_user ||= session[:user_id] &&
      User.find_by_id(session[:user_id])


    # if (session[:user_id])
    #   @current_user ||= User.find_by_id(session[:user_id])
    # else
    #   @current_user ||= session[:user_id]
    # end

  end

  def check_logged_in
    redirect_to( new_session_path, :notice => "You must be logged on or create a new account to do this ") unless current_user?
  end



  def get_genres
    @genres = Genre.all.sort
  end
end
