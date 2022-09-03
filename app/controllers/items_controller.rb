class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)  
    if @item.save
      redirect_to root_path
    else render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @review = Review.new
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
    @reviews = @item.reviews.includes(:user)
  end

  def edit
    @item = Item.find(params[:id])
    unless user_signed_in? && @item.user.id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else render :edit
    end
  end
  def search
    # params[:q]がnilではない且つ、params[:q][:name]がnilではないとき（商品名の欄が入力されているとき）
    # if params[:q] && params[:q][:name]と同じような意味合い
    if params[:q]&.dig(:items_name)
      # squishメソッドで余分なスペースを削除する
      squished_keywords = params[:q][:items_name].squish
      ## 半角スペースを区切り文字として配列を生成し、paramsに入れる
      params[:q][:items_name_cont_any] = squished_keywords.split(" ")
    end
    @q = Item.ransack(params[:q])
    @items = @q.result
  end



  private

  def item_params
    params.require(:item).permit(:items_name, :publisher, :recommendation, :image,:genre_1_id,:genre_2_id,:genre_3_id).merge(user_id: current_user.id)
  end

end
