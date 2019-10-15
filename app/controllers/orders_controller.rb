class OrdersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    # byebug
    @orders = Order.accessible_by(current_ability)
    # @order_product = Product.find_by_name(params[:product_name])
    # @products = Product.all
    logger.debug "THERE ARE #{@orders.count} ORDERS"
  end

  def new
  end

  def create
  end

  def show
    @order = Order.find(params[:id])
    # byebug
  end

  def destroy
  end
end
