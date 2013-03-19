class MainController < ApplicationController
  def index


  end

  def contact
  end

  def about
  end

  def genre
     @podcasts = Podcast.all(:include => :genres, :conditions => ["genres.name = ?", params[:genre].downcase] )
  end
end
