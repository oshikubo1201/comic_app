class ReviewsController < ApplicationController

  def index
    @reviews 
  end

  def create
      @review = Review.new(review_params)
      @review.user_id = current_user.id
      if @review.save
        redirect_to item_path(@review.item)
      else
        redirect_to item_path(@review.item)
      end
    end
  
    private
    def review_params
      params.require(:review).permit(:item_id, :score, :review).merge(user_id: current_user.id)
    end
  end