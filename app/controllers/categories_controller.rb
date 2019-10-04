class CategoriesController < ApplicationController
  # before_action :authenticate_user!
  # load_and_authorize_resource

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.all
    @products = @products.paginate(:page => params[:page], :per_page => 2)
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

end
