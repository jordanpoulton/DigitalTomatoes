class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params[:genre])
    @genre.save
    redirect_to :action => 'index'
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(:name => params[:genre][:name])
    redirect_to genres_path(@genre)
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to :action => 'index'
  end

  def edit
    @genre = Genre.find(params[:id])
  end
end
