class ProductsController < ApplicationController
  def index
    @pagy, @products = pagy(Product.all, items: 8)
  end

  def show
    @pagy, @product = pagy(Product.find(params[:id]), items: 8)
  end

  def search
    @category_id = params[:product][:category_id]

    @product_name = params[:product_name]

    if params[:product][:category_id].present?
        @pagy, @products = pagy(Product.where("category_id = ?", @category_id), items: 8)
    end

    if params[:product][:category_id].present? && params[:product_name]
      @pagy, @products = pagy(Product.where("category_id = ? and name like ?", @category_id, "%#{@product_name.downcase}%"), items: 8)
    end

  end
end
