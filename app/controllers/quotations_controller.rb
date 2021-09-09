class QuotationsController < ApplicationController

  def index
    @quotations = Quotation.order("created_at DESC")
  end

  def new
    @quotations = Quotation.order("created_at DESC")
    @quotation = Quotation.new
    @items = Item.order("created_at DESC")
    @clients = Client.order("created_at DESC")
  end

  def create
    binding.pry
    @item = Item.find(params[:item_id])
    @quotation = @item.quotation.new(quotation_params)
    if @quotation.save
      redirect_to new_quotation_path
    else
      render :index
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def quotation_params
    params.require(:quotation).permit(:name, :quantity, :standard, :price, :labor).merge(user_id: current_user.id)
  end

end
