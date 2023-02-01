class ProductsController < ApplicationController

  def index
    @products = Product.find(current_owner.shop.id) if Product.exists?(current_owner.shop.id)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create

  end

end
