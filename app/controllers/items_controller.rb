class ItemsController < ApplicationController

  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:notice] = "Item was saved"
      redirect_to current_user
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
     @item = current_user.items.find(params[:id])
     @item.destroy

     respond_to do |format|
       format.html { redirect_to current_user }
       format.js
     end
   end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
