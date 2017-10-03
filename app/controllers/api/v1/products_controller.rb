class Api::V1::ProductsController < ApplicationController
  def index
    @products = Products.all.order(:id).reverse
    resond_with @products
  end

  def show
    @product = Product.find(params[:id])
    respond_with @product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 201
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :short_description, :long_description, :in_store_item, :online_order_item, :product_type, :active)
  end
end
