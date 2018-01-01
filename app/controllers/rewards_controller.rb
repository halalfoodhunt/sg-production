class RewardsController < ApplicationController
  def index
     if params[:feature].present? 
    @feature_id = Feature.find_by(name: params[:feature]).id
    @places = Place.joins(:highlights).where(highlights: {feature_id: @feature_id})
    @search_places = Place.ransack(params[:q])
    elsif params[:menu_item].present? 
    @menu_item_id = MenuItem.find_by(name: params[:menu_item]).id
    @places = Place.joins(:dish_items).where(dish_items: {menu_item_id: @menu_item_id})
    @search_places = Place.ransack(params[:q])
    elsif params[:dining_type].present? 
    @dining_type_id = DiningType.find_by(name: params[:dining_type]).id
    @places = Place.joins(:eateries).where(eateries: {dining_type_id: @dining_type_id})
    @search_places = Place.ransack(params[:q])
    else
    @search_places = Place.ransack(params[:q])
    @places = @search_place.result(distinct: true).where(reward_id: @reward_id).order("created_at DESC").where(draft: false)
     end
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @place_types = PlaceType.all
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
  def places
    if params[:feature].present? 
    @feature_id = Feature.find_by(name: params[:feature]).id
    @places = Place.joins(:highlights).where(highlights: {feature_id: @feature_id})
    @search_places = Place.ransack(params[:q])
    elsif params[:menu_item].present? 
    @menu_item_id = MenuItem.find_by(name: params[:menu_item]).id
    @places = Place.joins(:dish_items).where(dish_items: {menu_item_id: @menu_item_id})
    @search_places = Place.ransack(params[:q])
    elsif params[:dining_type].present? 
    @dining_type_id = DiningType.find_by(name: params[:dining_type]).id
    @places = Place.joins(:eateries).where(eateries: {dining_type_id: @dining_type_id}).order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_places = Place.ransack(params[:q])
    @rewards = Reward.all
    else
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
    @rewards = Reward.all
    end
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @place_types = PlaceType.all
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
end
