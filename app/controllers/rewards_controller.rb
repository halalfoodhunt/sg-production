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
    @rewards = Reward.all
  end
  
  def caterers
    if params[:caterer_type].present? 
    @caterer_type_id = CatererType.find_by(name: params[:caterer_type]).id
    @caterers = Caterer.joins(:caterer_categories).where(caterer_categories: {caterer_type_id: @caterer_type_id})
    @search_caterers = Caterer.ransack(params[:q])
    elsif params[:caterer_service_type].present? 
    @caterer_service_type_id = CatererServiceType.find_by(name: params[:caterer_service_type]).id
    @caterers = Caterer.joins(:cooking_service_types).where(cooking_service_types: {caterer_service_type_id: @caterer_service_type_id})
    @search_caterers = Caterer.ransack(params[:q])
    elsif params[:cuisine_type].present? 
    @cuisine_type_id = CuisineType.find_by(name: params[:cuisine_type]).id
    @caterers = Caterer.joins(:cooking_types).where(cooking_types: {cuisine_type_id: @cuisine_type_id})
    @search_caterers = Caterer.ransack(params[:q])
    elsif params[:event_type].present? 
    @event_type_id = EventType.find_by(name: params[:event_type]).id
    @caterers = Caterer.joins(:function_types).where(function_types: {event_type_id: @event_type_id})
    @search_caterers = Caterer.ransack(params[:q])
    elsif params[:caterer_menu_item].present? 
    @caterer_menu_item_id = CatererMenuItem.find_by(name: params[:caterer_menu_item]).id
    @caterers = Caterer.joins(:caterer_dish_items).where(caterer_dish_items: {caterer_menu_item_id: @caterer_menu_item_id})
    @search_caterers = Caterer.ransack(params[:q])
    else
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
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
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
  def food_deliveries
    if params[:food_delivery_menu_item].present? 
    @food_delivery_menu_item_id = FoodDeliveryMenuItem.find_by(name: params[:food_delivery_menu_item]).id
    @food_deliveries = FoodDelivery.joins(:food_delivery_dish_items).where(food_delivery_dish_items: {food_delivery_menu_item_id: @food_delivery_menu_item_id})
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    elsif params[:delivery_location].present? 
    @delivery_location_id = DeliveryLocation.find_by(name: params[:delivery_location]).id
    @food_deliveries = FoodDelivery.joins(:shipping_locations).where(shipping_locations: {delivery_location_id: @delivery_location_id})
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    elsif params[:delivery_service_type].present? 
    @delivery_service_type_id = DeliveryServiceType.find_by(name: params[:delivery_service_type]).id
    @food_deliveries = FoodDelivery.joins(:shipping_service_types).where(shipping_service_types: {delivery_service_type_id: @delivery_service_type_id})
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    else
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
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
  
  def suppliers
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
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
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
  def bakers
    if params[:ordering_method].present? 
    @ordering_method_id = OrderingMethod.find_by(name: params[:ordering_method]).id
    @bakers = Baker.joins(:booking_methods).where(booking_methods: {ordering_method_id: @ordering_method_id})
    @search_bakers = Baker.ransack(params[:q])
    elsif params[:delivery_location].present? 
    @delivery_location_id = DeliveryLocation.find_by(name: params[:delivery_location]).id
    @bakers = Baker.joins(:shipping_locations).where(shipping_locations: {delivery_location_id: @delivery_location_id})
    @search_bakers = Baker.ransack(params[:q])
    elsif params[:product_type_service_type].present? 
    @baker_service_type_id = BakerServiceType.find_by(name: params[:baker_service_type]).id
    @bakers = Baker.joins(:baker_work_types).where(baker_work_types: {baker_service_type_id: @baker_service_type_id})
    @search_bakers = Baker.ransack(params[:q])
    elsif params[:baker_service_type].present? 
    @baker_menu_item_id = BakerMenuItem.find_by(name: params[:baker_menu_item]).id
    @bakers = Baker.joins(:baker_dish_items).where(baker_dish_items: {baker_menu_item_id: @baker_menu_item_id})
    @search_bakers = Baker.ransack(params[:q])
    @baker_product_category_id = BakerProductCategory.find_by(name: params[:baker_product_category]).id
    @bakers = Baker.joins(:baker_product_types).where(baker_product_types: {baker_product_category_id: @baker_product_category_id})
    @search_bakers = Baker.ransack(params[:q])
    else
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result(distinct: true).order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
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
    @place_types = PlaceType.all
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
  def online_retail
    if params[:ordering_method].present? 
    @ordering_method_id = OrderingMethod.find_by(name: params[:ordering_method]).id
    @online_retails = OnlineRetail.joins(:booking_methods).where(booking_methods: {ordering_method_id: @ordering_method_id})
    @search_online_retails = OnlineRetail.ransack(params[:q])
    elsif params[:delivery_location].present? 
    @delivery_location_id = DeliveryLocation.find_by(name: params[:delivery_location]).id
    @online_retails = OnlineRetail.joins(:shipping_locations).where(shipping_locations: {delivery_location_id: @delivery_location_id})
    @search_online_retails = OnlineRetail.ransack(params[:q])
    elsif params[:online_retail_service_type].present? 
    @online_retail_service_type_id = OnlineRetailServiceType.find_by(name: params[:online_retail_service_type]).id
    @online_retails = OnlineRetail.joins(:online_retail_work_types).where(online_retail_work_types: {online_retail_service_type_id: @online_retail_service_type_id})
    @search_online_retails = OnlineRetail.ransack(params[:q])
    elsif params[:product_category].present? 
    @product_category_id = ProductCategory.find_by(name: params[:product_category]).id
    @online_retails = OnlineRetail.joins(:product_types).where(product_types: {product_category_id: @product_category_id})
    @search_online_retails = OnlineRetail.ransack(params[:q])
    elsif params[:online_retail_menu_item].present? 
    @online_retail_menu_item_id = OnlineRetailMenuItem.find_by(name: params[:online_retail_menu_item]).id
    @online_retails = OnlineRetail.joins(:online_retail_dish_items).where(online_retail_dish_items: {online_retail_menu_item_id: @online_retail_menu_item_id})
    @search_online_retails = OnlineRetail.ransack(params[:q])
    else
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
  def raw_food
    if params[:ordering_method].present? 
    @ordering_method_id = OrderingMethod.find_by(name: params[:ordering_method]).id
    @raw_foods = RawFood.joins(:booking_methods).where(booking_methods: {ordering_method_id: @ordering_method_id})
    @search_raw_foods = RawFood.ransack(params[:q])
    elsif params[:delivery_location].present? 
    @delivery_location_id = DeliveryLocation.find_by(name: params[:delivery_location]).id
    @raw_foods = RawFood.joins(:shipping_locations).where(shipping_locations: {delivery_location_id: @delivery_location_id})
    @search_raw_foods = RawFood.ransack(params[:q])
    elsif params[:online_retail_service_type].present? 
    @online_retail_service_type_id = OnlineRetailServiceType.find_by(name: params[:online_retail_service_type]).id
    @raw_foods = RawFood.joins(:online_retail_work_types).where(online_retail_work_types: {online_retail_service_type_id: @online_retail_service_type_id})
    @search_raw_foods = RawFood.ransack(params[:q])
    elsif params[:online_retail_service_type].present? 
    @raw_food_menu_item_id = RawFoodMenuItem.find_by(name: params[:raw_food_menu_item]).id
    @raw_foods = RawFood.joins(:raw_food_dish_items).where(raw_food_dish_items: {raw_food_menu_item_id: @raw_food_menu_item_id})
    @search_raw_foods = RawFood.ransack(params[:q])
    else
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false).where(reward_id: nil)
    @discounts = Discount.all
    @rewards = Reward.all
  end
  
end
