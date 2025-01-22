class ReviewsController < ApplicationController
  def create
    @surfboard = Surfboard.find(params[:surfboard_id])
    @review = Review.new(review_params)
    @review.surfboard = @surfboard
    if @review.save
      redirect_to surfboard_path(@surfboard)
    else
      render 'surfboard/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
