class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def self.avg_review
    reviews_arr = Review.map do |review|
      review.rating
    end
    reviews_arr.sum / reviews_arr.count
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
