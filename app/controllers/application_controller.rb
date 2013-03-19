class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_genres

  private

  def current_user
    @current_user ||= session[:user_id] &&
      User.find_by_id(session[:user_id])


    # if (session[:user_id])
    #   @current_user ||= User.find_by_id(session[:user_id])
    # else
    #   @current_user ||= session[:user_id]
    # end

  end

  def get_genres
    @genres = Genre.all.sort
  end
end
