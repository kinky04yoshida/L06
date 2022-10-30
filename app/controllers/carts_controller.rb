class CartsController < ApplicationController
  def show
    @cartitems = Cartitem.all
  end
  
  def enter
    session.delete(:cart_id)
  end
  
end
