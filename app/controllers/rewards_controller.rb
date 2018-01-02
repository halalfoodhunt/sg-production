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
    @places = @search_places.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
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
    @places = @search_places.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
    elsif params[:menu_item].present? 
    @menu_item_id = MenuItem.find_by(name: params[:menu_item]).id
    @places = Place.joins(:dish_items).where(dish_items: {menu_item_id: @menu_item_id})
    @search_places = Place.ransack(params[:q])
    elsif params[:dining_type].present? 
    @dining_type_id = DiningType.find_by(name: params[:dining_type]).id
    @places = Place.joins(:eateries).where(eateries: {dining_type_id: @dining_type_id}).order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_places = Place.ransack(params[:q])
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
  
  def homies_and_popups
    if params[:ordering_method].present? 
    @ordering_method_id = OrderingMethod.find_by(name: params[:ordering_method]).id
    @homies = Homy.joins(:booking_methods).where(booking_methods: {ordering_method_id: @ordering_method_id})
    @search_homies = Homy.ransack(params[:q])
    elsif params[:delivery_location].present? 
    @delivery_location_id = DeliveryLocation.find_by(name: params[:delivery_location]).id
    @homies = Homy.joins(:shipping_locations).where(shipping_locations: {delivery_location_id: @delivery_location_id})
    @search_homies = Homy.ransack(params[:q])
    elsif params[:homie_service_type].present? 
    @homie_service_type_id = HomieServiceType.find_by(name: params[:homie_service_type]).id
    @homies = Homy.joins(:homie_work_types).where(homie_work_types: {homie_service_type_id: @homie_service_type_id})
    @search_homies = Homy.ransack(params[:q])
    elsif params[:homie_service_type].present? 
    @homies_menu_item_id = HomiesMenuItem.find_by(name: params[:homies_menu_item]).id
    @homies = Homy.joins(:homies_dish_items).where(homies_dish_items: {homies_menu_item_id: @homies_menu_item_id})
    @search_homies = Homy.ransack(params[:q])
    else
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
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
  end
  
end
