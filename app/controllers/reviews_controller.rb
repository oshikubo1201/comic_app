class ReviewsController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @review = Review.new
    @reviews = @item.reviews
  end

  def create
      @review = Review.new(review_params)
      @review.user_id = current_user.id
      if @review.save
        redirect_to item_reviews_path(@review.item)
      else
        @item = @review.item
        @reviews = @item.reviews
       render "index" 
 
      end
    end
  
    private
    def review_params
      params.require(:review).permit(:item_id, :score, :review).merge(user_id: current_user.id)
    end
  end