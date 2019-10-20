class Admin::ProductPhotosController < ApplicationController
  before_action :set_product

  def index
    @product = Product.find(params[:product_id])
    @product_photos = @product.product_photos
    @product_photo = ProductPhoto.new
  end

  def create
    @product_photo = ProductPhoto.new(product_photo_params)
    @product_photo.product = @product
    @product_photo.save
    redirect_to admin_product_product_photos_path(@product)
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def product_photo_params
    params.require(:product_photo).permit(:photo)
  end
end
