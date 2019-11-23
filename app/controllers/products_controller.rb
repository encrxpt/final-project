class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @category_id = params[:product][:category_id]

    @product_name = params[:product_name]

    if params[:product][:category_id].present?
        @products = Product.where("category_id = ?", @category_id)
    end

    if params[:product][:category_id].present? && params[:product_name]
      @products = Product.where("category_id = ? and name like ?", @category_id, "%#{@product_name.downcase}%")
    end

  end
end
