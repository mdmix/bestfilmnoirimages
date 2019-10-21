class CategoriesController < ApplicationController
  # before_action :authenticate_user!
  # load_and_authorize_resource

  # before_action :authenticate_admin!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.all
    @products = @products.paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category added to the mix"
      redirect_to categories_path
    else
      flash[:notice] = "Category has to be something"
      render 'admin/products/new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category remixed"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    Category.destroy(params[:id])
    flash[:notice] = "Category removed!"
    redirect_to admin_categories_path
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

end
