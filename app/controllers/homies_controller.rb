class HomiesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_homy, only: [:show, :edit, :update, :destroy]

  # GET /homies
  # GET /homies.json
  def index
    if params[:ordering_method].present? 
    @ordering_method_id = OrderingMethod.find_by(name: params[:ordering_method]).id
    @homies = Homy.joins(:booking_methods).where(booking_methods: {ordering_method_id: @ordering_method_id})
    @search_homies = Homy.ransack(params[:q])
    else
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    end
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
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

  # GET /homies/1
  # GET /homies/1.json
  def show
  end

  # GET /homies/new
  def new
    @current_merchant = current_merchant
    @homy = Homy.new
    @homy.listing = Listing.find_by id: params["listing_id"]
    @homy.opening_hours.build
    @homy.rewards.build
    @homy.menus.build
    @homy.verifying_documents.build
  end

  # GET /homies/1/edit
  def edit
    @homy.opening_hours.build
    @homy.menus.build
    @homy.verifying_documents.build
  end

  # POST /homies
  # POST /homies.json
  def create
    @homy = current_merchant.homies.new(homy_params)

    respond_to do |format|
      if @homy.save
        format.html { redirect_to @homy, notice: 'Homy was successfully created.' }
        format.json { render :show, status: :created, location: @homy }
      else
        format.html { render :new }
        format.json { render json: @homy.errors, status: :unprocessable_entity }
      end
    end
    @homy.ordering_method_ids = params[:homy][:ordering_method_ids]
    @homy.delivery_location_ids = params[:homy][:delivery_location_ids]
    @homy.homies_menu_item_ids = params[:homy][:homies_menu_item_ids]
    @homy.homie_service_type_ids = params[:homy][:homie_service_type_ids]
  end

  # PATCH/PUT /homies/1
  # PATCH/PUT /homies/1.json
  def update
    respond_to do |format|
      if @homy.update(homy_params)
        format.html { redirect_to @homy, notice: 'Homy was successfully updated.' }
        format.json { render :show, status: :ok, location: @homy }
      else
        format.html { render :edit }
        format.json { render json: @homy.errors, status: :unprocessable_entity }
      end
    end
    @homy.rewards.build
    @homy.menus.build
    @homy.verifying_documents.build
    @homy.ordering_method_ids = params[:homy][:ordering_method_ids]
    @homy.delivery_location_ids = params[:homy][:delivery_location_ids]
    @homy.homies_menu_item_ids = params[:homy][:homies_menu_item_ids]
    @homy.homie_service_type_ids = params[:homy][:homie_service_type_ids]
  end

  # DELETE /homies/1
  # DELETE /homies/1.json
  def destroy
    @homy.destroy
    respond_to do |format|
      format.html { redirect_to homies_url, notice: 'Homy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homy
      @homy = Homy.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homy_params
      params.require(:homy).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :question_1, :question_2, :self_collect_location, :draft, :verified, :halal_expiry, :expiry_date, :merchant_id, :listing_id, :qualifying_type_id, :homies_type_id, :rewards_attributes => [:id, :discount_id, :terms, :friends_code], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], ordering_method_ids: [], delivery_location_ids: [], homies_menu_item_ids: [], homie_service_type_ids: [])
    end
end
