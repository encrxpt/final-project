class ProductsController < ApplicationController
  def index
    @pagy, @products = pagy(Product.all, items: 8)
  end

  def show
    @product = Product.find(params[:id])
  end

  def filter
    @s = params[:status_id]
    @p = params[:product_name]

    @pagy, @products =
      if @s.empty?
        pagy(Product.where('name LIKE ?', "%#{p}#"), items: 8)
      else
        pagy(Product.where('name LIKE ? AND status_id = ?', "%#{@p}%", @s))
      end
  end

  def search
    @c = params[:category_id]
    @p = params[:product_name]

    @pagy, @products =
      if @c.empty?
        pagy(Product.where('name LIKE ?', "%#{p}#"), items: 8)
      else
        pagy(Product.where('name LIKE ? AND category_id = ?', "%#{@p}%", @c))
      end

  # if params[:product][:status_id] =="" && params[:product][:category_id] && @product_name ==nil
  #   @pagy, @products = pagy(Product.where("status_id = ? and category_id = ?", @status_id, @category_id), items: 8)
  #  elsif params[:product][:category_id].present? && params[:product][:status_id].present?
  #     @pagy, @products = pagy(Product.where("category_id = ? and status_id = ?", @category_id, @status_id), items: 8)
  #  elsif params[:product][:category_id].present? && params[:product][:status_id].present? && @product_name.present?
  #   @pagy, @products = pagy(Product.where("category_id = ? and status_id = ? and name like ?", @category_id, @status_id, "%#{@product_name.downcase}%"), items: 8)
  # elsif params[:product][:category_id].present? && params[:product][:status_id].present? && @product_name.present?
  #   @pagy, @products = pagy(Product.where("category_id = ? and status_id = ? and name like ?", @category_id, @status_id, "%#{@product_name.downcase}%"), items: 8)
  #  else
  #   @pagy, @products = pagy(Product.where("category_id = ?", @category_id), items: 8)
  # end

    # if params[:product][:status_id]=="" && params[:product][:category_id].present? && params[:product_name]==nil
    #   @pagy, @products = pagy(Product.where("status_id = ? and category_id = ?", @status_id, @category_id), items: 8)
    # elsif params[:product][:status_id].present? && params[:product][:category_id].present? && params[:product_name]==nil
    #   @pagy, @products = pagy(Product.where("status_id = ? and category_id = ?", @status_id, @category_id), items: 8)
    # elsif params[:product][:status_id].present? && params[:product][:category_id].present? && params[:product_name].present?
    #   @pagy, @products = pagy(Product.where("status_id = ? and category_id = ? and name like ?", @status_id, @category_id, "%#{@product_name.downcase}%"), items: 8)
    # elsif params[:product][:status_id]=="" && params[:product][:category_id].present? && params[:product_name].present?
    #   @pagy, @products = pagy(Product.where("category_id = ? and name like ?", @category_id, "%#{@product_name.downcase}%"), items: 8)
    # else
    #   @pagy, @products = pagy(Product.where("category_id = ?", @category_id), items: 8)
    # end
  end
end
