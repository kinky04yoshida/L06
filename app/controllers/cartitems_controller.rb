class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new(product_id: params[:product_id])
  end
  
  def create
    if params[:cartitem][:product_id]
      @cartitem = Cartitem.new(
        product_id: params[:cartitem][:product_id],
        cart_id: current_cart.id,
        quantity: params[:cartitem][:quantity])
      if @cartitem.save  
        redirect_to root_path
      else
        render new_cartitem_path
      end
    end
  end
  
  def destroy
    @cartitem = Cartitem.find(params[:id])
    @cartitem.destroy
    redirect_to '/carts/show'
  end
  
end
