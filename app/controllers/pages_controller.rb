class PagesController < ApplicationController
    before_action :authenticate_merchant!, only: [:merchant_dashboard]
    before_action :check_quota, only: [:merchant_dashboard]
    before_action :quota, only: [:merchant_dashboard]
    
  def index
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false)
    @place_types = PlaceType.all
    @discounts = Discount.all
  end

  def merchant_dashboard
    @current_merchant = current_merchant
    @listing_count = current_merchant.places.count + current_merchant.homies.count + current_merchant.caterers.count + current_merchant.food_deliveries.count + current_merchant.suppliers.count + current_merchant.suppliers.count + current_merchant.bakers.count + current_merchant.online_retails.count
    @places = Place.all
    @homies = Homy.all
    @caterers = Caterer.all
    @food_deliveries = FoodDelivery.all
    @suppliers = Supplier.all
    @raw_foods = RawFood.all
    @bakers = Baker.all
    @online_retails = OnlineRetail.all
  end

  def admin_dashboard
  end

  def terms
  end

  def privacy_policy
  end
  
  def friends
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false)
    @place_types = PlaceType.all
    @discounts = Discount.all
  end
  
  def quota
    @listing_count = current_merchant.places.count + current_merchant.homies.count + current_merchant.caterers.count + current_merchant.food_deliveries.count + current_merchant.suppliers.count + current_merchant.suppliers.count + current_merchant.bakers.count + current_merchant.online_retails.count
  end 
  
  def check_quota
    if current_merchant.basic? && quota >= 1
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.basic_plus? && quota >= 1
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.pair? && quota >= 2
      @quota_warning = "Maximum listings reached."
    end
    if current_merchant.bundle? && quota >= 3
      @quota_warning = "Maximum listings reached."
    end
  end
    
end
