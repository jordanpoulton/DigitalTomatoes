class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.new(params[:podcast])
    @podcast.save
    redirect_to :action => 'index'
  end

  def edit
    @podcast = Podcast.find(params[:id])
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
end
