class RewardsController < ApplicationController
  def index
    @search_place = Place.ransack(params[:q])
    @places = @search_place.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    
  if params[:discount].blank?
    @search_place = Place.ransack(params[:q])
    @places = @search_place.result.where(draft: false).where.not(discount_id: nil).order("created_at DESC")
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.where(draft: false).where.not(discount_id: nil).order("created_at DESC")
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.where(discount_id: @discount_id).order("created_at DESC").where(draft: false).where.not(discount_id: nil)
  else
    @discount_id = Discount.find_by(name: params[:discount]).id
    @places = Place.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @homies = Homy.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @caterers = Caterer.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @food_deliveries = FoodDelivery.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @online_retails = OnlineRetail.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @suppliers = Supplier.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @bakers = Baker.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
    @raw_foods = RawFood.where(discount_id: @discount_id).order("created_at DESC").where(draft: false)
  end
  end
end
