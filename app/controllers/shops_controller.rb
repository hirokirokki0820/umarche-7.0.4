class ShopsController < ApplicationController
  before_action :set_shop, only: %i[ edit update destroy]

  def index
    if owner_signed_in?
      @shop = Shop.find(current_owner.id) if Shop.exists?(current_owner.id)
    elsif admin_signed_in?
      @shops = Shop.all
    end
  end

  def edit
  end

  def create
    if admin_signed_in?
      @shop = Shop.new(shop_params)
      @shop.owner = current_owner
      if @shop.save
        redirect_to @shop
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
    if @shop.update(shop_params)
      redirect_to shops_path, notice: "店舗情報が更新されました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def shop_params
    params.require(:shop).permit(:name, :information, :is_selling)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end


end
