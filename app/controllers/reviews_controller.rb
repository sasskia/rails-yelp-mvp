class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find( params[:restaurant_id] )
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
        # find a restaurant and associate it to the review
    @restaurant = Restaurant.find( params[:restaurant_id] )
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:review).permit(:rating, :content)
  end

end
