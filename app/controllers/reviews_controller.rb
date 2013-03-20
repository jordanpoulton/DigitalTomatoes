class ReviewsController < ApplicationController

  def new
    @podcast = Podcast.find(params[:id])
    @review= Review.new
  end

  def create
    @review = Review.new
    @review.body= params[:review][:body]
    @review.user_id=params[:user_id]
    @review.podcast_id=params[:podcast_id]
    @review.rating=params[:rating]
    @review.save
    redirect_to podcast_path(params[:podcast_id])


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
