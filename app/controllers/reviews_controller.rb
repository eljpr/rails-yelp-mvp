class ReviewsController < ApplicationController
  before_action :set_resto, only: %i[new create]
  def new
    # We need @restaurant in our `simple_form_for`
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'reviews/new', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_resto
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
