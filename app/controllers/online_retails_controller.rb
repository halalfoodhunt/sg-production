class OnlineRetailsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_online_retail, only: [:show, :edit, :update, :destroy]

  # GET /online_retails
  # GET /online_retails.json
  def index
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
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false)
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
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false)
    @discounts = Discount.all
  end

  # GET /online_retails/1
  # GET /online_retails/1.json
  def show
  end

  # GET /online_retails/new
  def new
    @current_merchant = current_merchant
    @online_retail = OnlineRetail.new
    @online_retail.listing = Listing.find_by id: params["listing_id"]
    @online_retail.rewards.build
    @online_retail.menus.build
    @online_retail.verifying_documents.build
  end

  # GET /online_retails/1/edit
  def edit
  end

  # POST /online_retails
  # POST /online_retails.json
  def create
    @online_retail = current_merchant.online_retails.new(online_retail_params)

    respond_to do |format|
      if @online_retail.save
        format.html { redirect_to @online_retail, notice: 'Online retail was successfully created.' }
        format.json { render :show, status: :created, location: @online_retail }
      else
        format.html { render :new }
        format.json { render json: @online_retail.errors, status: :unprocessable_entity }
      end
    end
    @online_retail.ordering_method_ids = params[:online_retail][:ordering_method_ids]
    @online_retail.delivery_location_ids = params[:online_retail][:delivery_location_ids]
    @online_retail.menu_item_ids = params[:online_retail][:menu_item_ids]
    @online_retail.online_retail_service_type_ids = params[:online_retail][:online_retail_service_type_ids]
    @online_retail.product_category_ids = params[:online_retail][:product_category_ids]
  end

  # PATCH/PUT /online_retails/1
  # PATCH/PUT /online_retails/1.json
  def update
    respond_to do |format|
      if @online_retail.update(online_retail_params)
        format.html { redirect_to @online_retail, notice: 'Online retail was successfully updated.' }
        format.json { render :show, status: :ok, location: @online_retail }
      else
        format.html { render :edit }
        format.json { render json: @online_retail.errors, status: :unprocessable_entity }
      end
    end
    @online_retail.rewards.build
    @online_retail.menus.build
    @online_retail.verifying_documents.build
    @online_retail.ordering_method_ids = params[:online_retail][:ordering_method_ids]
    @online_retail.delivery_location_ids = params[:online_retail][:delivery_location_ids]
    @online_retail.menu_item_ids = params[:online_retail][:menu_item_ids]
    @online_retail.online_retail_service_type_ids = params[:online_retail][:online_retail_service_type_ids]
    @online_retail.product_category_ids = params[:online_retail][:product_category_ids]
  end

  # DELETE /online_retails/1
  # DELETE /online_retails/1.json
  def destroy
    @online_retail.destroy
    respond_to do |format|
      format.html { redirect_to online_retails_url, notice: 'Online retail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_retail
      @online_retail = OnlineRetail.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_retail_params
      params.require(:online_retail).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :self_collection_address, :question_1, :halal_expiry, :expiry_date, :verified, :draft, :merchant_id, :listing_id, :product_qualifying_type_id, :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document],  ordering_method_ids: [], delivery_location_ids: [], online_retail_menu_item_ids: [], online_retail_service_type_ids: [], product_category_ids: [])
    end
end
