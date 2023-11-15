class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])

    @review = Review.new(review_params) # { content: '...' }
    @review.restaurant = @restaurant

    if @review.save # only returns true / false
      redirect_to restaurant_path(@restaurant)
    else
      # renders the /views/reviews/new.html.erb with a 422 error code
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
