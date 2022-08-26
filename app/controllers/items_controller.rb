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

  private

  def item_params
    params.require(:item).permit(:items_name, :publisher, :recommendation, :image,:genre_1_id,:genre_2_id,:genre_3_id).merge(user_id: current_user.id)
  end

end
