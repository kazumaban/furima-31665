class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  #def destroy
    #@item = Item.find(params[:id])
    #if item.destroy
    #redirect_to root_path
    #end
  #end

  def move_to_index
    unless user_signed_in?
      redirect_to user_session_path
    end
  end

  private

  def items_params
    params.require(:item).permit(:name, :explanation, :category_id, :status_id, :delivery_fee_id, :delivery_area_id, :delivery_day_id, :price, :image).merge(user_id: current_user.id)
  end
end
