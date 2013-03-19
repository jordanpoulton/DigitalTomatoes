class MainController < ApplicationController
  def index


  end

  def contact
  end

  def about
  end

  def genre
    #List all podcasts linked to the genre provided in params

     @podcasts = Podcast.joins(:genres).where('genres.name' => params[:genre])
  end
end
