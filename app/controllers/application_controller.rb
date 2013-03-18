class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :get_genres

private

  def get_genres
    @genres = Genre.all.sort
  end
end
