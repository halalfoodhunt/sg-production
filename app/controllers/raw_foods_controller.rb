class RawFoodsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_raw_food, only: [:show, :edit, :update, :destroy]

  # GET /raw_foods
  # GET /raw_foods.json
  def index
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
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false)
    @discounts = Discount.all
  end

  # GET /raw_foods/1
  # GET /raw_foods/1.json
  def show
  end

  # GET /raw_foods/new
  def new
    @current_merchant = current_merchant
    @raw_food = RawFood.new
    @raw_food.listing = Listing.find_by id: params["listing_id"]
    @raw_food.opening_hours.build
    @raw_food.rewards.build
    @raw_food.menus.build
    @raw_food.verifying_documents.build
  end

  # GET /raw_foods/1/edit
  def edit
  end

  # POST /raw_foods
  # POST /raw_foods.json
  def create
    @raw_food = current_merchant.raw_foods.new(raw_food_params)

    respond_to do |format|
      if @raw_food.save
        format.html { redirect_to @raw_food, notice: 'Raw food was successfully created.' }
        format.json { render :show, status: :created, location: @raw_food }
      else
        format.html { render :new }
        format.json { render json: @raw_food.errors, status: :unprocessable_entity }
      end
    end
    @raw_food.ordering_method_ids = params[:raw_food][:ordering_method_ids]
    @raw_food.delivery_location_ids = params[:raw_food][:delivery_location_ids]
    @raw_food.online_retail_service_type_ids = params[:raw_food][:online_retail_service_type_ids]
    @raw_food.raw_food_product_category_ids = params[:raw_food][:raw_food_product_category_ids]
  end

  # PATCH/PUT /raw_foods/1
  # PATCH/PUT /raw_foods/1.json
  def update
    respond_to do |format|
      if @raw_food.update(raw_food_params)
        format.html { redirect_to @raw_food, notice: 'Raw food was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_food }
      else
        format.html { render :edit }
        format.json { render json: @raw_food.errors, status: :unprocessable_entity }
      end
    end
    @raw_food.opening_hours.build
    @raw_food.rewards.build
    @raw_food.menus.build
    @raw_food.verifying_documents.build
    @raw_food.ordering_method_ids = params[:raw_food][:ordering_method_ids]
    @raw_food.delivery_location_ids = params[:raw_food][:delivery_location_ids]
    @raw_food.online_retail_service_type_ids = params[:raw_food][:online_retail_service_type_ids]
    @raw_food.raw_food_product_category_ids = params[:raw_food][:raw_food_product_category_ids]
  end

  # DELETE /raw_foods/1
  # DELETE /raw_foods/1.json
  def destroy
    @raw_food.destroy
    respond_to do |format|
      format.html { redirect_to raw_foods_url, notice: 'Raw food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_food
      @raw_food = RawFood.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_food_params
      params.require(:raw_food).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :self_collection_address, :question_1, :expiry_date, :halal_expiry, :draft, :verified, :merchant_id, :listing_id, :product_qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], ordering_method_ids: [], delivery_location_ids: [], raw_food_product_category_ids: [], online_retail_service_type_ids: [])
    end
end
