class ReviewsController < ApplicationController

  def new
    @podcast = Podcast.find(params[:id])
    @review= Review.new
  end

  def create
    # @review = Review.create(params[:review])
    # review comes from params
    # podcast comes from params (as it's created on podcast page)
    # user_id comes from current_user

  end

  def edit

  end

  def update
  end

  def destroy

  end

end
