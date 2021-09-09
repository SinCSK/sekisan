class ItemsController < ApplicationController

  def index 
  end

  def new
    @items = Item.order("created_at DESC")
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to new_item_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :standard, :unit, :unit_price, :unit_labor)#.merge(user_id: current_user.id)
  end

end
