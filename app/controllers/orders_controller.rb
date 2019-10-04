class OrdersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    # byebug
    @orders = Order.accessible_by(current_ability)
    logger.debug "THERE ARE #{@orders.count} ORDERS"
  end

  def show
    @order = Order.find(params[:id])
    # @cart_products_with_qty = current_user.get_cart_products_with_qty
    # @order_products_with_qty = current_user.get_order_products_with_qty
    # @order_total = current_user.order_total_price
    # @quantity = Order.find(params[:id])
    # byebug
  end

  def new
  end

  def create
  end

  def destroy
  end
end
