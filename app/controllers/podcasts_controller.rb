class PodcastsController < ApplicationController
  before_filter :check_logged_in, :only => [:new]

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
    @rating = calculate_rating(params[:id])
    @review = Review.new
    @reviews = Review.where("podcast_id = ?", params[:id])
  end

  def new
    @podcast = Podcast.new
    @genres = Genre.all
  end

  def create
    # debugger
    @podcast = Podcast.new(params[:podcast])
    @podcast.save
    redirect_to :action => 'index'
  end

  def edit
    @podcast = Podcast.find(params[:id])
    @genres = Genre.all
  end

  def update
    @podcast = Podcast.find(params[:id])
    @podcast.update_attributes(:name => params[:podcast][:name], :body => params[:podcast][:body], :image => params[:podcast][:image], :url => params[:podcast][:url], :rating => params[:podcast][:rating])
    redirect_to podcasts_path(@podcast)
  end

  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    redirect_to :action => 'index'
  end

  private

  def calculate_rating(id)
    all_reviews_array = Review.where("podcast_id = ?", id)

    reviews_count = all_reviews_array.count
    reviews_ratings_tally =0
    all_reviews_array.each {|review| reviews_ratings_tally += review.rating}
    reviews_ratings_tally *= 10
    reviews_ratings_tally /= reviews_count
  end
end
