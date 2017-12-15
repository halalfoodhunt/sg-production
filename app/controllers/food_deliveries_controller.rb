class FoodDeliveriesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_food_delivery, only: [:show, :edit, :update, :destroy]

  # GET /food_deliveries
  # GET /food_deliveries.json
  def index
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
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false)
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

  # GET /food_deliveries/1
  # GET /food_deliveries/1.json
  def show
  end

  # GET /food_deliveries/new
  def new
    @current_merchant = current_merchant
    @food_delivery = FoodDelivery.new
    @food_delivery.listing = Listing.find_by id: params["listing_id"]
    @food_delivery.opening_hours.build
    @food_delivery.rewards.build
    @food_delivery.menus.build
    @food_delivery.verifying_documents.build
  end

  # GET /food_deliveries/1/edit
  def edit
  end

  # POST /food_deliveries
  # POST /food_deliveries.json
  def create
    @food_delivery = current_merchant.food_deliveries.new(food_delivery_params)

    respond_to do |format|
      if @food_delivery.save
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully created.' }
        format.json { render :show, status: :created, location: @food_delivery }
      else
        format.html { render :new }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.delivery_location_ids = params[:food_delivery][:delivery_location_ids]
    @food_delivery.delivery_service_type_ids = params[:food_delivery][:delivery_service_type_ids]
    @food_delivery.menu_item_ids = params[:food_delivery][:menu_item_ids]
  end

  # PATCH/PUT /food_deliveries/1
  # PATCH/PUT /food_deliveries/1.json
  def update
    respond_to do |format|
      if @food_delivery.update(food_delivery_params)
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_delivery }
      else
        format.html { render :edit }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.opening_hours.build
    @food_delivery.rewards.build
    @food_delivery.menus.build
    @food_delivery.verifying_documents.build
    @food_delivery.delivery_location_ids = params[:food_delivery][:delivery_location_ids]
    @food_delivery.delivery_service_type_ids = params[:food_delivery][:delivery_service_type_ids]
    @food_delivery.menu_item_ids = params[:food_delivery][:menu_item_ids]
  end

  # DELETE /food_deliveries/1
  # DELETE /food_deliveries/1.json
  def destroy
    @food_delivery.destroy
    respond_to do |format|
      format.html { redirect_to food_deliveries_url, notice: 'Food delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_delivery
      @food_delivery = FoodDelivery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_delivery_params
      params.require(:food_delivery).permit(:logo, :brand_name, :delivery_hotline, :general_email, :link_to_online_ordering_page, :facebook_page, :instagram_handle, :question_1, :featured_image, :draft, :verified, :halal_expiry, :expiry_date, :merchant_id, :listing_id, :qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], delivery_service_type_ids: [], delivery_location_ids: [], food_deliveries_menu_item_ids: [])
    end
end
