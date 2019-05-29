class OrdersController < ApplicationController
  before_action :set_product, except: %i[destroy]

  def create
    @order = Order.new(price: @product.price)
    @order.user = current_user
    @order.product = @product

    if @order.save
      redirect_to user_path(current_user)
    else
      redirect_to product_path(@product)
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete

    redirect_to user_path(current_user)
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
