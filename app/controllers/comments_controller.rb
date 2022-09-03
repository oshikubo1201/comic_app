class CommentsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)

  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to item_comments_path(@comment.item)
    else
       @item = @comment.item
       @comments = @item.comments
       
      render "index" 
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, item_id:  params[:item_id])
  end

end
