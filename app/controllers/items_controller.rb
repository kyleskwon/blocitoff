class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:notice] = "Item was saved"
      redirect_to @item
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

<<<<<<< HEAD
  def item_params
    params.require(:item).permit(:name)
=======
  def new
    @item = Item.new
>>>>>>> 5be62c98e06e8c61e28b3334c91479f121f4094f
  end

end
