class MainController < ApplicationController
  def index
    @latest_podcasts = Podcast.limit(10).reverse
  end

  def contact
  end

  def about
  end

  def genre
     @podcasts = Podcast.all(:include => :genres, :conditions => ["genres.name = ?", params[:genre].downcase] )
  end
end
