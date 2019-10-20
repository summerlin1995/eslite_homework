class Admin::ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :show]

  def index
    @products = Product.all
  end

  def show
    @product_photo = ProductPhoto.new
    #@product = Product.find[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

    private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:sku, :name, :status, :published, :price, :original_price)
  end
end
